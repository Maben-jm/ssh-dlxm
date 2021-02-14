package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecSystemDDLDao;
import com.maben.dlxm.domain.ElecSystemDDL;
import com.maben.dlxm.service.ElecSystemDDLService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.*;

@Service(value = ElecSystemDDLService.SERVICE_NAME)
@Transactional(readOnly = true)
public class ElecSystemDDLServiceImpl implements ElecSystemDDLService {

    @Resource(name = ElecSystemDDLDao.SERVICE_NAME)
    private ElecSystemDDLDao elecSystemDDLDao;

    @Override
    public List<ElecSystemDDL> findElecSystemDDLWithDistinct() {
        List<Object> list = elecSystemDDLDao.findElecSystemDDLWithDistinct();
        List<ElecSystemDDL> result = systemDDLPOListToVOList(list);
        return result;
    }

    @Override
    public List<ElecSystemDDL> findElecSystemDDLSbykeyword(String keyword) {
//        构建条件
        String condition = "";
        List<Object> params = new ArrayList<>();
        if (StringUtils.isNotBlank(keyword)){
            condition += " and o.keyword = ? ";
            params.add(keyword);
        }
//        组织排序
        final Map<String,String> order = new LinkedHashMap<>();
        order.put(" o.ddlCode ","asc");
//        获取数据
        List<ElecSystemDDL> list = elecSystemDDLDao.findCollectionByConditionNoPage(condition, params.toArray(), order);
        return list;
    }

    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void save(ElecSystemDDL elecSystemDDL) {
        final String keyword = elecSystemDDL.getKeywordname();
        if (StringUtils.isBlank(keyword)){
            return;
        }
        final String typeflag = elecSystemDDL.getTypeflag();
        String[] itemnames = elecSystemDDL.getItemname();
        if (Objects.isNull(itemnames) ){
            return;
        }
        if (StringUtils.equals("new",typeflag)){
//            新的直接添加
            saveSystemDDLExec(keyword, itemnames);
        }else{
            //原来就有，先将原来的全部删除，再添加新的
            List<ElecSystemDDL> list = findElecSystemDDLSbykeyword(keyword);
            elecSystemDDLDao.deleteObjectByCollection(list);
            saveSystemDDLExec(keyword, itemnames);
        }
    }

    private void saveSystemDDLExec(String keyword, String[] itemnames) {
        for (int i = 0; i < itemnames.length; i++) {
//                获取每个数据项的值
            String ddlName = itemnames[i];
            //从VO对象组织PO对象
            ElecSystemDDL systemDDL = new ElecSystemDDL();
            systemDDL.setKeyword(keyword);//数据类型
            systemDDL.setDdlCode(i+1);//数据项的编号
            systemDDL.setDdlName(ddlName);//数据项的值
            elecSystemDDLDao.save(systemDDL);//执行保存
        }
    }

    /**
     * 使用数据类型和数据项的编号，获取数据项的值
     * */
    @Override
    public String findDdlNameByKeywordAndDdlCode(String keyword, Integer ddlCode) {
        String condition = "";
        List<Object> paramsList = new ArrayList<Object>();
        if(StringUtils.isNotBlank(keyword)){
            condition += " and o.keyword=?";
            paramsList.add(keyword);
        }
        if(ddlCode!=null){
            condition += " and o.ddlCode=?";
            paramsList.add(ddlCode);
        }
        Object [] params = paramsList.toArray();
        List<ElecSystemDDL> list = elecSystemDDLDao.findCollectionByConditionNoPage(condition, params, null);
        //数据项的值
        String ddlName = "";
        if(list!=null && list.size()>0){
            ElecSystemDDL elecSystemDDL = list.get(0);
            ddlName = elecSystemDDL.getDdlName();
        }
        return ddlName;
    }

    private List<ElecSystemDDL> systemDDLPOListToVOList(List list) {
        List<ElecSystemDDL> result = new ArrayList<>();
        if (Objects.isNull(list) || list.size() == 0) {
            return result;
        }
        for (int i = 0; i < list.size(); i++) {
            ElecSystemDDL elecSystemDDL = new ElecSystemDDL();
            elecSystemDDL.setKeyword(list.get(i).toString());
            result.add(elecSystemDDL);
        }
        return result;
    }
}
