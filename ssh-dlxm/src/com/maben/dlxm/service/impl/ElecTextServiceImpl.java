package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecTextDao;
import com.maben.dlxm.domain.ElecText;
import com.maben.dlxm.service.ElecTextService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.*;

@Service(ElecTextService.SERVICE_NAME)
@Transactional(readOnly = true)
public class ElecTextServiceImpl implements ElecTextService {

    @Resource(name = ElecTextDao.SERVICE_NAME)
    private ElecTextDao elecTextDao;


    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void save(ElecText elecText) throws Exception {
        elecTextDao.save(elecText);
    }

    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void update(ElecText elecText) {
        elecTextDao.update(elecText);
    }

    @Override
    public ElecText findObjectById(Serializable id) {
        return elecTextDao.findObjectById(id);
    }

    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void deleteObjectByIds(Serializable... ids) {
        elecTextDao.deleteObjectByIds(ids);
    }

    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void deleteObjectByCollection(List<ElecText> list) {
        elecTextDao.deleteObjectByCollection(list);
    }

    @Override
    public List<ElecText> findCollectionByConditionNoPage(ElecText elecText) {
//        组织查询条件
        String condition = "";
        List paramsList = new ArrayList();
        if (StringUtils.isNotBlank(elecText.getTextName())){
            condition+=" and o.textName like ? ";
            paramsList.add("%"+elecText.getTextName()+"%");
        }
        if (StringUtils.isNotBlank(elecText.getTextRemark())){
            condition+=" and o.textRemark like ? ";
            paramsList.add("%"+elecText.getTextRemark()+"%");
        }
        Object[] params = paramsList.toArray();
//        组织排序
        Map<String,String> order = new LinkedHashMap<>();
        order.put("o.textDate","desc");
        order.put("o.textName","asc");
        List<ElecText> list = elecTextDao.findCollectionByConditionNoPage(condition,params,order);
        return list;
    }
}
