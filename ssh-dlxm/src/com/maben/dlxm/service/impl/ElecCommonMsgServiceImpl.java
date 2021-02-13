package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecCommonMsgDao;
import com.maben.dlxm.domain.ElecCommonMsg;
import com.maben.dlxm.service.ElecCommonMsgService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.*;

@Service(ElecCommonMsgService.SERVICE_NAME)
@Transactional(readOnly = true)
public class ElecCommonMsgServiceImpl implements ElecCommonMsgService {

    @Resource(name = ElecCommonMsgDao.SERVICE_NAME)
    private ElecCommonMsgDao elecCommonMsgDao;

    @Override
    @Transactional(readOnly = false, isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED)
    public void save(ElecCommonMsg elecCommonMsg) throws Exception {
        elecCommonMsg.setCreateDate(new Date());
        if (Objects.nonNull(elecCommonMsg) && StringUtils.isNotBlank(elecCommonMsg.getComID())) {
            elecCommonMsgDao.update(elecCommonMsg);
        } else {
            elecCommonMsgDao.save(elecCommonMsg);
        }
    }

    @Override
    public ElecCommonMsg findObjectById(Serializable id) {
        return elecCommonMsgDao.findObjectById(id);
    }

    @Override
    @Transactional(readOnly = false, isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED)
    public void deleteObjectByIds(Serializable... ids) {
        elecCommonMsgDao.deleteObjectByIds(ids);
    }

    @Override
    @Transactional(readOnly = false, isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED)
    public void deleteObjectByCollection(List<ElecCommonMsg> list) {
        elecCommonMsgDao.deleteObjectByCollection(list);
    }

    @Override
    public List<ElecCommonMsg> findCollectionByConditionNoPage(ElecCommonMsg elecCommonMsg) {
        //        组织查询条件
        String condition = "";
        List paramsList = new ArrayList();
        if (StringUtils.isNotBlank(elecCommonMsg.getDevRun())) {
            condition += " and o.devRun like ? ";
            paramsList.add("%" + elecCommonMsg.getDevRun() + "%");
        }
        Object[] params = paramsList.toArray();
//        组织排序
        Map<String, String> order = new LinkedHashMap<>();
        order.put("o.createDate", "desc");
        List<ElecCommonMsg> list = elecCommonMsgDao.findCollectionByConditionNoPage(condition, params, order);
        return list;
    }

    @Override
    public ElecCommonMsg findOne() {
        List<ElecCommonMsg> list = findCollectionByConditionNoPage(new ElecCommonMsg());
        if (Objects.nonNull(list) && list.size() > 0) {
            return list.get(0);
        }
        return null;
    }
}
