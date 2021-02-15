package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecPopedomDao;
import com.maben.dlxm.dao.ElecRolePopedomDao;
import com.maben.dlxm.dao.ElecUserRoleDao;
import com.maben.dlxm.domain.ElecPopedom;
import com.maben.dlxm.service.ElecRoleService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Service(value = ElecRoleService.SERVICE_NAME)
@Transactional(readOnly = true)
public class ElecRoleServiceImpl implements ElecRoleService {

    @Resource(name = ElecUserRoleDao.SERVICE_NAME)
    private ElecUserRoleDao elecUserRoleDao;

    @Resource(name = ElecRolePopedomDao.SERVICE_NAME)
    private ElecRolePopedomDao elecRolePopedomDao;

    @Resource(name = ElecPopedomDao.SERVICE_NAME)
    private ElecPopedomDao elecPopedomDao;

    @Override
    public List<ElecPopedom> findAllPopedom() {
//        按照权限的编号升序排列
        final Map<String,String> orderMap = new LinkedHashMap<>();
        orderMap.put("o.code","asc");
        List<ElecPopedom> popedoms = elecPopedomDao.findCollectionByConditionNoPage(null, null, orderMap);
        return popedoms;
    }
}
