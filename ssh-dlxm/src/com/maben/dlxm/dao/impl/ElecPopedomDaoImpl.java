package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecPopedomDao;
import com.maben.dlxm.domain.ElecPopedom;
import org.springframework.stereotype.Repository;

@Repository(ElecPopedomDao.SERVICE_NAME)
public class ElecPopedomDaoImpl extends CommonDaoImpl<ElecPopedom> implements ElecPopedomDao {
}
