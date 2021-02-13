package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecExportFieldsDao;
import com.maben.dlxm.domain.ElecExportFields;
import org.springframework.stereotype.Repository;

@Repository(ElecExportFieldsDao.SERVICE_NAME)
public class ElecExportFieldsDaoImpl extends CommonDaoImpl<ElecExportFields> implements ElecExportFieldsDao {
}
