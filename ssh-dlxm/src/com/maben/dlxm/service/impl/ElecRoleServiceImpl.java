package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecPopedomDao;
import com.maben.dlxm.dao.ElecRolePopedomDao;
import com.maben.dlxm.dao.ElecUserRoleDao;
import com.maben.dlxm.domain.ElecPopedom;
import com.maben.dlxm.domain.ElecRolePopedom;
import com.maben.dlxm.domain.ElecUser;
import com.maben.dlxm.service.ElecRoleService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.*;

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
        final Map<String, String> orderMap = new LinkedHashMap<>();
        orderMap.put("o.code", "asc");
        List<ElecPopedom> popedoms = elecPopedomDao.findCollectionByConditionNoPage(null, null, orderMap);
        return popedoms;
    }

    @Override
    public List<ElecPopedom> findPopedomByRoleId(String roleID) {
//        1.首先查询所有的权限
        List<ElecPopedom> allPopedom = findAllPopedom();
        if (Objects.isNull(allPopedom) || allPopedom.size() == 0) {
            return new ArrayList<ElecPopedom>();
        }
//        2.查询和角色关联的权限
        ElecRolePopedom rolePopedom = elecRolePopedomDao.findObjectById(roleID);
        if (Objects.isNull(rolePopedom)) {
            return allPopedom;
        }
//        3.构造最终list
        final String popedomcode = rolePopedom.getPopedomcode();
        if (StringUtils.isBlank(popedomcode)) {
            return allPopedom;
        }
        for (int i = 0; i < allPopedom.size(); i++) {
            ElecPopedom elecPopedom = allPopedom.get(i);
            if (popedomcode.contains(elecPopedom.getCode())) {
                elecPopedom.setFlag("1");
            } else {
                elecPopedom.setFlag("2");
            }
        }
//        4:返回带有标识的实体类
        return allPopedom;
    }

    @Override
    public List<ElecUser> findUsersByRoleId(String roleID) {
        List<Object[]> list = elecUserRoleDao.findUserListByRoleID(roleID);
        List<ElecUser> formList = this.userPOListToVOList(list);
        return formList;
    }

    /**值转换*/
    private List<ElecUser> userPOListToVOList(List<Object[]> list) {
        List<ElecUser> formList = new ArrayList<ElecUser>();
        if(list!=null && list.size()>0){
            for(Object[] objects:list){
                //赋值,flag,a.userID,a.userName,a.logonName
                ElecUser elecUser = new ElecUser();
                elecUser.setFlag(objects[0].toString());
                elecUser.setUserID(objects[1].toString());
                elecUser.setUserName(objects[2].toString());
                elecUser.setLogonName(objects[3].toString());
                formList.add(elecUser);
            }
        }
        return formList;
    }
}
