package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecApplicationTemplateDao;
import com.maben.dlxm.domain.ElecApplicationTemplate;
import com.maben.dlxm.service.ElecApplicationTemplateService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service(value = ElecApplicationTemplateService.SERVICE_NAME)
@Transactional(readOnly = true)
public class ElecApplicationTemplateServiceImpl implements ElecApplicationTemplateService {
    @Resource(name = ElecApplicationTemplateDao.SERVICE_NAME)
    private ElecApplicationTemplateDao elecApplicationTemplateDao;

    @Override
    public List<ElecApplicationTemplate> findApplicationTemplateList() {
        final List<ElecApplicationTemplate> list = elecApplicationTemplateDao.findCollectionByConditionNoPage("", null, null);
        return list;
    }
}
