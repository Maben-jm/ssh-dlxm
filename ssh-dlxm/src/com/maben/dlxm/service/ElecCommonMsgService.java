package com.maben.dlxm.service;

import com.maben.dlxm.domain.ElecCommonMsg;

import java.io.Serializable;
import java.util.List;

public interface ElecCommonMsgService {
    public static final String SERVICE_NAME = "com.maben.dlxm.service.impl.ElecCommonMsgServiceImpl";

    void save(ElecCommonMsg elecCommonMsg) throws Exception;

    ElecCommonMsg findObjectById(Serializable id);

    void deleteObjectByIds(Serializable... ids);

    void deleteObjectByCollection(List<ElecCommonMsg> list);

    List<ElecCommonMsg> findCollectionByConditionNoPage(ElecCommonMsg elecCommonMsg);

    ElecCommonMsg findOne();
}
