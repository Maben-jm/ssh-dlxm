package com.maben.dlxm.service;

import com.maben.dlxm.domain.ElecUser;

import java.util.List;

public interface ElecUserService {
    public static final String SERVICE_NAME = "com.maben.dlxm.service.impl.ElecUserServiceImpl";

    List<ElecUser> findUserListByCondition(ElecUser elecUser);

    void save(ElecUser elecUser);

    ElecUser findUserById(String userID);

    void deleteUserById(String userID);

    String findMessageByLogonName(String logonName);
}
