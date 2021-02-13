package com.maben.dlxm.service;

import com.maben.dlxm.domain.ElecExportFields;

public interface ElecExportFieldsService {
    public static final String SERVICE_NAME = "com.maben.dlxm.service.impl.ElecExportFieldsServiceImpl";

    ElecExportFields findExportFieldsById(String belongTo);

    void saveSetExportExcel(ElecExportFields elecExportFields);
}
