package com.maben.dlxm.service.impl;

import com.maben.dlxm.dao.ElecUserDao;
import com.maben.dlxm.domain.ElecUser;
import com.maben.dlxm.service.ElecSystemDDLService;
import com.maben.dlxm.service.ElecUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.*;

@Service(value = ElecUserService.SERVICE_NAME)
@Transactional(readOnly = true)
public class ElecUserServiceImpl implements ElecUserService {

    @Resource(name = ElecUserDao.SERVICE_NAME)
    private ElecUserDao elecUserDao;

    @Resource(name = ElecSystemDDLService.SERVICE_NAME)
    private ElecSystemDDLService elecSystemDDLService;

    @Override
    public List<ElecUser> findUserListByCondition(ElecUser elecUser) {
        String condition = "";
        List params = new ArrayList();
        if (Objects.nonNull(elecUser)) {
            if (StringUtils.isNotBlank(elecUser.getUserName())) {
                condition += " and o.userName like ? ";
                params.add("%" + elecUser.getUserName() + "%");
            }
        }
        Map<String, String> oderMap = new LinkedHashMap<>();
        oderMap.put("o.createDate", "desc");
        oderMap.put("o.lastDate", "desc");
        List<ElecUser> result = elecUserDao.findCollectionByConditionNoPage(condition, params.toArray(), oderMap);
        this.initUserSystemDDL(result);
        return result;
    }

    @Override
    @Transactional(readOnly = false, isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED)
    public void save(ElecUser elecUser) {
        if (Objects.isNull(elecUser)) {
            return;
        }
        //对密码进行md5的处理
//        this.logonPwdByMd5(elecUser);
        if (StringUtils.isBlank(elecUser.getUserID())) {
            elecUser.setCreateDate(new Date());
            elecUser.setLastDate(new Date());
            elecUserDao.save(elecUser);
        } else {
            elecUser.setLastDate(new Date());
            elecUserDao.update(elecUser);
        }
    }

    @Override
    public ElecUser findUserById(String userID) {
        return elecUserDao.findObjectById(userID);
    }

    @Override
    @Transactional(readOnly = false,isolation = Isolation.DEFAULT,propagation = Propagation.REQUIRED)
    public void deleteUserById(String userID) {
        if (StringUtils.isBlank(userID)){
            return;
        }
        elecUserDao.deleteObjectByIds(userID);
    }

    @Override
    public String findMessageByLogonName(String logonName) {
        if (StringUtils.isBlank(logonName)){
            return "2";
        }
        String condition = " and logonName = ?";
        List<ElecUser> list = elecUserDao.findCollectionByConditionNoPage(condition, new Object[]{logonName}, null);
        if (Objects.isNull(list) || list.size()==0){
            return "2";
        }
        return "1";
    }

    /**
     * 使用md5技术对密码进行加密
     */
//    private void logonPwdByMd5(ElecUser elecUser) {
//        String logonPwd = elecUser.getLogonPwd();//加密前
//        String md5LogonPwd = "";//加密后
//        //如果密码不填写，设置默认密码为000000
//        if (StringUtils.isBlank(logonPwd)) {
//            logonPwd = "000000";
//        }
//        //获取md5flag，用来判断是否对密码进行加密
//        String md5flag = elecUser.getMd5flag();
//        //此时不需要对密码进行加密
//        if (md5flag != null && md5flag.equals("1")) {
//            md5LogonPwd = logonPwd;
//        } else {
//            //对密码进行加密
//            MD5keyBean bean = new MD5keyBean();
//            md5LogonPwd = bean.getkeyBeanofStr(logonPwd);
//        }
//        //将加密后的密码放置到对象中
//        elecUser.setLogonPwd(md5LogonPwd);
//    }

    /**
     * 对用户信息中数据字典的值的转换
     */
    private void initUserSystemDDL(List<ElecUser> list) {
        if (list != null && list.size() > 0) {
            for (ElecUser elecUser : list) {
                //组织性别，所属单位，是否在职
                elecUser.setSexID(StringUtils.isNotBlank(elecUser.getSexID()) ? elecSystemDDLService.findDdlNameByKeywordAndDdlCode("性别", Integer.parseInt(elecUser.getSexID())) : "");
                elecUser.setJctID(StringUtils.isNotBlank(elecUser.getJctID()) ? elecSystemDDLService.findDdlNameByKeywordAndDdlCode("所属单位", Integer.parseInt(elecUser.getJctID())) : "");
                elecUser.setIsDuty(StringUtils.isNotBlank(elecUser.getIsDuty()) ? elecSystemDDLService.findDdlNameByKeywordAndDdlCode("是否在职", Integer.parseInt(elecUser.getIsDuty())) : "");
            }
        }
    }


}
