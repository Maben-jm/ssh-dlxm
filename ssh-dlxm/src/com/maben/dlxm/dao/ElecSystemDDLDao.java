package com.maben.dlxm.dao;

import com.maben.dlxm.domain.ElecSystemDDL;

import java.util.List;

public interface ElecSystemDDLDao extends CommonDao<ElecSystemDDL> {
    public static final String SERVICE_NAME = "com.maben.dlxm.dao.impl.ElecSystemDDLDaoImpl";

    List<Object> findElecSystemDDLWithDistinct();
}
