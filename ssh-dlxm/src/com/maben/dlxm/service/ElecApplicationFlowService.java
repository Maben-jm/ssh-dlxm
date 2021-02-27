package com.maben.dlxm.service;

import com.maben.dlxm.domain.ElecApplication;

import java.util.List;

public interface ElecApplicationFlowService {
    public static final String SERVICE_NAME ="com.maben.dlxm.service.impl.ElecApplicationFlowServiceImpl";

    void saveApplication(ElecApplication elecApplication);

    List<ElecApplication> findApplicationListByCondition(ElecApplication elecApplication);
}
