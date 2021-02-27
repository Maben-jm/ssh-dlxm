package com.maben.dlxm.service;

import com.maben.dlxm.domain.ElecApplication;
import com.maben.dlxm.domain.ElecApproveInfo;

import java.io.InputStream;
import java.util.Collection;
import java.util.List;

public interface ElecApplicationFlowService {
    public static final String SERVICE_NAME ="com.maben.dlxm.service.impl.ElecApplicationFlowServiceImpl";

    void saveApplication(ElecApplication elecApplication);

    List<ElecApplication> findApplicationListByCondition(ElecApplication elecApplication);

    List<ElecApplication> findMyTask();

    Collection<String> findOutComeListByTaskId(ElecApplication elecApplication);

    InputStream findInputStreamWithFile(ElecApplication elecApplication);

    void approve(ElecApplication elecApplication);

    List<ElecApproveInfo> findApproveInfoListByApplicationID(ElecApplication elecApplication);
}
