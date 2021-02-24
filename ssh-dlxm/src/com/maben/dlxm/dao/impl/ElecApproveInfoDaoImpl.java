package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecApproveInfoDao;
import com.maben.dlxm.domain.ElecApproveInfo;
import org.springframework.stereotype.Repository;

@Repository(value = ElecApproveInfoDao.SERVICE_NAME)
public class ElecApproveInfoDaoImpl extends CommonDaoImpl<ElecApproveInfo> implements ElecApproveInfoDao {

}
