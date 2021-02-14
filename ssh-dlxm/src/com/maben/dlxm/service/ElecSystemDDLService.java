package com.maben.dlxm.service;

import com.maben.dlxm.domain.ElecSystemDDL;

import java.util.List;

public interface ElecSystemDDLService {
    public static final String SERVICE_NAME = "com.maben.dlxm.service.impl.ElecSystemDDLServiceImpl";

    List<ElecSystemDDL> findElecSystemDDLWithDistinct();

    List<ElecSystemDDL> findElecSystemDDLSbykeyword(String keyword);

    void save(ElecSystemDDL elecSystemDDL);

    String findDdlNameByKeywordAndDdlCode(String keyword, Integer ddlCode);
}
