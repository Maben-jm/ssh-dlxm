package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecApplicationTemplateDao;
import com.maben.dlxm.domain.ElecApplicationTemplate;
import com.maben.dlxm.service.ElecApplicationTemplateService;
import com.maben.dlxm.util.FileUploadUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.File;
import java.util.List;

@Service(value = ElecApplicationTemplateService.SERVICE_NAME)
@Transactional(readOnly = true)
public class ElecApplicationTemplateServiceImpl implements ElecApplicationTemplateService {
    @Resource(name = ElecApplicationTemplateDao.SERVICE_NAME)
    private ElecApplicationTemplateDao elecApplicationTemplateDao;

    /**
     * 获取所有的模板
     * @return List<ElecApplicationTemplate>
     */
    @Override
    public List<ElecApplicationTemplate> findApplicationTemplateList() {
        final List<ElecApplicationTemplate> list = elecApplicationTemplateDao.findCollectionByConditionNoPage("", null, null);
        return list;
    }

    /**
     * 保存模板方法
     * @param elecApplicationTemplate elecApplicationTemplate
     */
    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void saveElecApplicationTemplate(ElecApplicationTemplate elecApplicationTemplate) {
//        1:获取上传的file文件
        final File upload = elecApplicationTemplate.getUpload();
//        2：将文件上传到指定目录下，并返回path
        final String path = FileUploadUtils.fileReturnPath(upload);
//        3：将路径保存到模板类中
        elecApplicationTemplate.setPath(path);
        elecApplicationTemplateDao.save(elecApplicationTemplate);
    }
}
