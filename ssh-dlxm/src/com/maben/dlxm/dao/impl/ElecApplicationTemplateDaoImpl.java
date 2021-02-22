package com.maben.dlxm.dao.impl;

import com.maben.dlxm.dao.ElecApplicationTemplateDao;
import com.maben.dlxm.domain.ElecApplicationTemplate;
import org.springframework.stereotype.Repository;

@Repository(value = ElecApplicationTemplateDao.SERVICE_NAME)
public class ElecApplicationTemplateDaoImpl extends CommonDaoImpl<ElecApplicationTemplate> implements ElecApplicationTemplateDao {

}
