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
import java.io.FileInputStream;
import java.io.InputStream;
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

    /**
     * 通过id获取唯一模板
     * @param elecApplicationTemplate elecApplicationTemplate
     * @return
     */
    @Override
    public ElecApplicationTemplate findApplicationTemlateByID(ElecApplicationTemplate elecApplicationTemplate) {
        return elecApplicationTemplateDao.findObjectById(elecApplicationTemplate.getId());
    }

    /**
     * 更新模板信息
     * @param elecApplicationTemplate elecApplicationTemplate
     */
    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void updateApplicationTemplate(ElecApplicationTemplate elecApplicationTemplate) {
        //获取上传的文件upload，用来判断是否上传了新的附件
        File file = elecApplicationTemplate.getUpload();
        //此时说明上传了新的附件
        if(file!=null){
            //获取页面中隐藏域的值path路径，使用path路径删除之前的附件
            String path = elecApplicationTemplate.getPath();
            File oldFile = new File(path);
            if(oldFile.exists()){
                //删除之前附件
                oldFile.delete();
            }
            //上传新的附件，返回路径path
            String newPath = FileUploadUtils.fileReturnPath(file);
            //组织PO对象，执行update操作
            elecApplicationTemplate.setPath(newPath);
        }
        elecApplicationTemplateDao.update(elecApplicationTemplate);
    }

    /**
     * 删除模板信息
     * @param elecApplicationTemplate elecApplicationTemplate
     */
    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void deleteApplicationTemplate(ElecApplicationTemplate elecApplicationTemplate) {
        //获取申请模板的主键ID
        Long id = elecApplicationTemplate.getId();
        //使用ID，获取申请模板的详细信息，从而获取路径path，使用path删除之前上传的附件
        ElecApplicationTemplate applicationTemplate = elecApplicationTemplateDao.findObjectById(id);
        String path = applicationTemplate.getPath();//路径path
        File oldFile = new File(path);
        if(oldFile.exists()){
            //删除之前的附件
            oldFile.delete();
        }
        //使用ID，删除数据库的数据
        elecApplicationTemplateDao.deleteObjectByIds(id);
    }

    /**
     * 下载模板
     * @param elecApplicationTemplate elecApplicationTemplate
     * @return inputstream
     */
    @Override
    public InputStream findInputStreamWithFile(ElecApplicationTemplate elecApplicationTemplate) {
        //获取申请模板的ID
        Long id = elecApplicationTemplate.getId();
        //使用申请模板ID，查询申请模板的详细信息，从而获取路径path
        ElecApplicationTemplate applicationTemplate = elecApplicationTemplateDao.findObjectById(id);
        //获取模板的名称
        String name = applicationTemplate.getName();
        //处理中文在xml中的显示，使用UTF-8进行编码
        try {
            //name = URLEncoder.encode(name, "UTF-8");
            name = new String(name.getBytes("gbk"),"iso-8859-1");
        } catch (Exception e1) {
            e1.printStackTrace();
        }
        //将模板名称放置到栈顶，用于在struts.xml文件中<param name="contentDisposition">attachment;filename="${name}.doc"</param>显示
        elecApplicationTemplate.setName(name);
        //路径path
        String path = applicationTemplate.getPath();
        //使用路径path获取upload文件夹下资源文件，转换成InputStream输入流对象
        File file = new File(path);
        InputStream inputStream = null;
        try {
            inputStream = new FileInputStream(file);
        } catch (Exception e) {
            throw new RuntimeException();
        }
        return inputStream;
    }
}
