package com.maben.dlxm.service.impl;

import com.maben.dlxm.service.ElecProcessDefinitionService;
import com.maben.dlxm.web.form.ProcessDefinitionBean;
import org.jbpm.api.ProcessDefinition;
import org.jbpm.api.ProcessDefinitionQuery;
import org.jbpm.api.ProcessEngine;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.File;
import java.io.FileInputStream;
import java.util.*;
import java.util.zip.ZipInputStream;

@Service(value = ElecProcessDefinitionService.SERVICE_NAME)
@Transactional(readOnly = true)
public class ElecProcessDefinitionServiceImpl implements ElecProcessDefinitionService {

    @Resource(name = "processEngine")
    private ProcessEngine processEngine;

    @Override
    public List<ProcessDefinition> findProcessDefinitionOrderByLastVersion() {
        //        查询所有流程定义对象 按照版本升序排列
        final List<ProcessDefinition> list = processEngine.getRepositoryService().createProcessDefinitionQuery().orderAsc(ProcessDefinitionQuery.PROPERTY_VERSION).list();
        if (Objects.isNull(list) || list.size() == 0) {
            return new ArrayList<>();
        }
        //        使用map存放最新的流程定义对象
        final Map<String, ProcessDefinition> result = new HashMap<>();
        for (int i = 0; i < list.size(); i++) {
            final ProcessDefinition processDefinition = list.get(i);
            result.put(processDefinition.getKey(), processDefinition);
        }

        return new ArrayList<>(result.values());
    }

    /**
     * 部署流程定义
     * @param processDefinitionBean 模型驱动对象
     */
    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void deployProcessDefinition(ProcessDefinitionBean processDefinitionBean) {
        try {
            //获取部署zip的文件，得到是File类型的upload，将Flie类型的文件转换成zip格式的文件。
            File upload = processDefinitionBean.getUpload();
            ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(upload));
            //使用zip的文件格式（Xxx.jpdl.xml和Xxx.png）部署流程定义。
            processEngine.getRepositoryService()//
                    .createDeployment()//
                    .addResourcesFromZipInputStream(zipInputStream)//使用zip格式的文件部署流程定义
                    .deploy();//完成部署
        } catch (Exception e) {
            throw new RuntimeException();
        }
    }
}

