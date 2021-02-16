package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecPopedomDao;
import com.maben.dlxm.dao.ElecRolePopedomDao;
import com.maben.dlxm.dao.ElecUserRoleDao;
import com.maben.dlxm.domain.ElecPopedom;
import com.maben.dlxm.domain.ElecRolePopedom;
import com.maben.dlxm.domain.ElecUser;
import com.maben.dlxm.domain.ElecUserRole;
import com.maben.dlxm.service.ElecRoleService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
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

    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void saveRole(ElecUserRole elecUserRole) {
        //角色ID
        String roleID = elecUserRole.getRoleID();
        //权限编号的数组
        String [] selectoper = elecUserRole.getSelectoper();
        //用户ID的数组
        String [] selectuser = elecUserRole.getSelectuser();
        /**一：保存角色权限关联表*/
        this.saveRolePopedom(roleID,selectoper);
        /**二：保存用户角色关联表*/
        this.saveUserRole(roleID,selectuser);
    }

    /**一：保存角色权限关联表*/
    private void saveRolePopedom(String roleID, String[] selectoper) {
        //组织PO对象，权限集合的字符串形式aa@ab...
        StringBuffer popedomcode = new StringBuffer("");
        if(selectoper!=null && selectoper.length>0){
            for(int i=0;i<selectoper.length;i++){
                String code = selectoper[i];
                popedomcode.append(code);
                if(i!=selectoper.length-1){//不是循环的最后一个值
                    popedomcode.append("@");
                }
            }
        }
        //使用角色ID查询角色权限关联表，判断当前角色在角色权限关联表中是否存在数据
        ElecRolePopedom elecRolePopedom = elecRolePopedomDao.findObjectById(roleID);
        //如果对象不为null，数据存在，此时组织PO对象，执行update操作
        if(elecRolePopedom!=null){
            elecRolePopedom.setPopedomcode(popedomcode.toString());//组织PO对象，aa@ab...
            elecRolePopedomDao.update(elecRolePopedom);//该行代码不可以不写，可以使用快照进行更新
        }
        //如果对象为null，数据不存在，此时组织PO对象，执行save操作
        else{
            elecRolePopedom = new ElecRolePopedom();
            elecRolePopedom.setRoleID(roleID);//角色ID
            elecRolePopedom.setPopedomcode(popedomcode.toString());//组织PO对象，aa@ab...
            elecRolePopedomDao.save(elecRolePopedom);
        }
    }

    /**二：保存用户角色关联表*/
    private void saveUserRole(String roleID, String[] selectuser) {
        //使用roleID作为查询条件，查询用户角色关联表，获取当前角色下对应数据集合
        String condition = " and o.roleID=?";
        Object[] params = {roleID};
        List<ElecUserRole> list = elecUserRoleDao.findCollectionByConditionNoPage(condition, params, null);
        //删除当前角色ID在用户角色关联表中的数据
        elecUserRoleDao.deleteObjectByCollection(list);
        //遍历用户ID的数组，组织PO对象，执行save
        if(selectuser!=null && selectuser.length>0){
            for(int i=0;i<selectuser.length;i++){
                String userID = selectuser[i];
                //组织PO对象
                ElecUserRole elecUserRole = new ElecUserRole();
                elecUserRole.setRoleID(roleID);
                elecUserRole.setUserID(userID);
                elecUserRoleDao.save(elecUserRole);
            }
        }
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
