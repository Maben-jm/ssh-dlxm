package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecUserDao;
import com.maben.dlxm.domain.ElecUser;
import org.springframework.stereotype.Repository;

@Repository(value = ElecUserDao.SERVICE_NAME)
public class ElecUserDaoImpl extends CommonDaoImpl<ElecUser> implements ElecUserDao {
}
