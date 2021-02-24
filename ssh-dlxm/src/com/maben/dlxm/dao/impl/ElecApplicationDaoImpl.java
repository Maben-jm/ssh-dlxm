package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecApplicationDao;
import com.maben.dlxm.domain.ElecApplication;
import org.springframework.stereotype.Repository;

@Repository(value = ElecApplicationDao.SERVICE_NAME)
public class ElecApplicationDaoImpl extends CommonDaoImpl<ElecApplication> implements ElecApplicationDao {
}
