package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecCommonMsgDao;
import com.maben.dlxm.domain.ElecCommonMsg;
import org.springframework.stereotype.Repository;

@Repository(ElecCommonMsgDao.SERVICE_NAME)
public class ElecCommonMsgDaoImpl extends CommonDaoImpl<ElecCommonMsg> implements ElecCommonMsgDao {
}
