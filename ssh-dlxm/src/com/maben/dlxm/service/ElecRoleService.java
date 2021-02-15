package com.maben.dlxm.service;

import com.maben.dlxm.domain.ElecPopedom;

import java.util.List;

public interface ElecRoleService {
    public static final String SERVICE_NAME = "com.maben.dlxm.service.impl.ElecRoleServiceImpl";

    List<ElecPopedom> findAllPopedom();
}
