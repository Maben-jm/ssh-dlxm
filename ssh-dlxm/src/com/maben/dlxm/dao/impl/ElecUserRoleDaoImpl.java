package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecUserRoleDao;
import com.maben.dlxm.domain.ElecUserRole;
import org.springframework.stereotype.Repository;

@Repository(value = ElecUserRoleDao.SERVICE_NAME)
public class ElecUserRoleDaoImpl extends CommonDaoImpl<ElecUserRole> implements ElecUserRoleDao {
}
