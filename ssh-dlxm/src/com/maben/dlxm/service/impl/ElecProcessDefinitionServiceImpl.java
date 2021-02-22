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
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
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
    @Transactional(readOnly = false, isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED)
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

    @Override
    public InputStream findImageImputStream(ProcessDefinitionBean processDefinitionBean) {
        //从页面上获取流程定义的ID，使用流程定义的ID进行查询，获取流程定义的对象，从而获取部署对象ID和资源文件名称
        //流程定义ID
        String id = processDefinitionBean.getId();
        //处理中文乱码的形式，如果js中定义id = encodeURI(id,"UTF-8");//让id以UTF-8的形式进行编码
        try {
            id = new String(id.getBytes("iso-8859-1"), "UTF-8");//让id以UTF-8的形式进行解码
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        ProcessDefinition pd = processEngine.getRepositoryService()//
                .createProcessDefinitionQuery()//
                .processDefinitionId(id)//按照流程定义的ID查询
                .uniqueResult();
        //获取部署对象ID
        String deploymentId = pd.getDeploymentId();
        //资源文件名称
        String imageResourceName = pd.getImageResourceName();
        //使用部署对象ID和资源文件名称，获取图片的文件流InputStream
        InputStream inputStream = processEngine.getRepositoryService()//
                .getResourceAsStream(deploymentId, imageResourceName);
        return inputStream;
    }

    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void deleteProcessDefinitionByKey(ProcessDefinitionBean processDefinitionBean) {
        //获取流程定义的key
        String key = processDefinitionBean.getKey();
        //处理中文乱码的形式
        try {
            key = new String(key.getBytes("iso-8859-1"), "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        //使用流程定义的key获取该key值下所有版本的流程定义，返回List集合
        List<ProcessDefinition> list = processEngine.getRepositoryService()//
                .createProcessDefinitionQuery()//
                .processDefinitionKey(key)//按照流程定义的key查询流程定义
                .list();
        //遍历List集合，遍历每个部署对象ID，执行删除
        if (list != null && list.size() > 0) {
            for (ProcessDefinition pd : list) {
                //获取每个部署对象ID
                String deploymentId = pd.getDeploymentId();
                //删除流程定义
                processEngine.getRepositoryService()//
                        .deleteDeploymentCascade(deploymentId);
            }
        }

    }
}

