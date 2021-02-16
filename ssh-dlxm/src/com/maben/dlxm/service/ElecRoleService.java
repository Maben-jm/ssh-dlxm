package com.maben.dlxm.service;

import com.maben.dlxm.domain.ElecPopedom;
import com.maben.dlxm.domain.ElecUser;
import com.maben.dlxm.domain.ElecUserRole;

import java.util.List;

public interface ElecRoleService {
    public static final String SERVICE_NAME = "com.maben.dlxm.service.impl.ElecRoleServiceImpl";

    List<ElecPopedom> findAllPopedom();

    List<ElecPopedom> findPopedomByRoleId(String roleID);

    List<ElecUser> findUsersByRoleId(String roleID);

    void saveRole(ElecUserRole elecUserRole);
}
