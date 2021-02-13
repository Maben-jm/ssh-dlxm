package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecExportFieldsDao;
import com.maben.dlxm.domain.ElecExportFields;
import com.maben.dlxm.service.ElecExportFieldsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service(value = ElecExportFieldsService.SERVICE_NAME)
@Transactional(readOnly = true)
public class ElecExportFieldsServiceImpl implements ElecExportFieldsService {

    @Resource(name = ElecExportFieldsDao.SERVICE_NAME)
    private ElecExportFieldsDao elecExportFieldsDao;

    @Override
    public ElecExportFields findExportFieldsById(String belongTo) {
        return elecExportFieldsDao.findObjectById(belongTo);
    }

    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void saveSetExportExcel(ElecExportFields elecExportFields) {
        elecExportFieldsDao.update(elecExportFields);
    }
}
