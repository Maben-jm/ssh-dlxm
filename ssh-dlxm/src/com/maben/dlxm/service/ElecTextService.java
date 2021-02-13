package com.maben.dlxm.service;

import com.maben.dlxm.domain.ElecText;

import java.io.Serializable;
import java.util.List;

public interface ElecTextService{
    public static final String SERVICE_NAME = "com.maben.dlxm.service.impl.ElecTextServiceImpl";

    void save(ElecText elecText) throws Exception;

    void update(ElecText elecText);

    ElecText findObjectById(Serializable id);

    void deleteObjectByIds(Serializable... ids);

    void deleteObjectByCollection(List<ElecText> list);

    List<ElecText> findCollectionByConditionNoPage(ElecText elecText);
}
