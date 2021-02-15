package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecRolePopedomDao;
import com.maben.dlxm.domain.ElecRolePopedom;
import org.springframework.stereotype.Repository;

@Repository(value = ElecRolePopedomDao.SERVICE_NAME)
public class ElecRolePopedomDaoImpl extends CommonDaoImpl<ElecRolePopedom> implements ElecRolePopedomDao {
}
