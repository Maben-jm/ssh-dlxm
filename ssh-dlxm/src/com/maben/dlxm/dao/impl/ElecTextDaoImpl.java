package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecTextDao;
import com.maben.dlxm.domain.ElecText;
import org.springframework.stereotype.Repository;

@Repository(ElecTextDao.SERVICE_NAME)
public class ElecTextDaoImpl extends CommonDaoImpl<ElecText> implements ElecTextDao {

}
