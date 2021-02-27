package com.maben.dlxm.dao;

import com.maben.dlxm.domain.ElecUser;

import java.util.List;

public interface ElecUserDao extends CommonDao<ElecUser> {
    public static final String SERVICE_NAME = "com.maben.dlxm.dao.impl.ElecUserDaoImpl";

    List<Object[]> findRoleByLogonName(String name);

    List<Object> findPopedomByLogonName(String name);

    List<Object[]> findChartDataSet();
}
