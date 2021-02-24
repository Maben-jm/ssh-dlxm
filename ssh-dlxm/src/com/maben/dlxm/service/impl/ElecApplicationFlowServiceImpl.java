package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecApplicationDao;
import com.maben.dlxm.dao.ElecApproveInfoDao;
import com.maben.dlxm.service.ElecApplicationFlowService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service(value = ElecApplicationFlowService.SERVICE_NAME)
@Transactional(readOnly = true)
public class ElecApplicationFlowServiceImpl implements ElecApplicationFlowService {
    @Resource(name = ElecApplicationDao.SERVICE_NAME)
    private ElecApplicationDao elecApplicationDao;
    @Resource(name = ElecApproveInfoDao.SERVICE_NAME)
    private ElecApproveInfoDao elecApproveInfoDao;
}
