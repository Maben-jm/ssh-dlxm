package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecSystemDDLDao;
import com.maben.dlxm.domain.ElecSystemDDL;
import com.maben.dlxm.service.ElecSystemDDLService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service(value = ElecSystemDDLService.SERVICE_NAME)
@Transactional(readOnly = true)
public class ElecSystemDDLServiceImpl implements ElecSystemDDLService {

    @Resource(name = ElecSystemDDLDao.SERVICE_NAME)
    private ElecSystemDDLDao elecSystemDDLDao;

    @Override
    public List<ElecSystemDDL> findElecSystemDDLWithDistinct() {
        List<Object> list = elecSystemDDLDao.findElecSystemDDLWithDistinct();
        List<ElecSystemDDL> result = systemDDLPOListToVOList(list);
        return result;
    }

    private List<ElecSystemDDL> systemDDLPOListToVOList(List list) {
        List<ElecSystemDDL> result = new ArrayList<>();
        if (Objects.isNull(list) || list.size() == 0) {
            return result;
        }
        for (int i = 0; i < list.size(); i++) {
            ElecSystemDDL elecSystemDDL = new ElecSystemDDL();
            elecSystemDDL.setKeyword(list.get(i).toString());
            result.add(elecSystemDDL);
        }
        return result;
    }
}
