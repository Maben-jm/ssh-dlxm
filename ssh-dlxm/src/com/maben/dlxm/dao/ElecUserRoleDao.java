package com.maben.dlxm.dao;

import com.maben.dlxm.domain.ElecUserRole;

import java.util.List;

public interface ElecUserRoleDao extends CommonDao<ElecUserRole> {
    public static final String SERVICE_NAME = "com.maben.dlxm.dao.impl.ElecUserRoleDaoImpl";

    List<Object[]> findUserListByRoleID(String roleID);
}
