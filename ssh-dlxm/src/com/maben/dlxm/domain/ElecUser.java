package com.maben.dlxm.domain;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class ElecUser implements Serializable {
    /**
     * CREATE TABLE Elec_User(
     * 	UserID VARCHAR(50)  NOT NULL, #主键ID
     * 	JctID VARCHAR(50)   NULL,     #所属单位code
     * 	UserName VARCHAR(50)   NULL,  #用户姓名
     * 	LogonName VARCHAR(50)   NULL, #登录名
     * 	LogonPwd VARCHAR(50)  NULL,   #密码#
     * 	SexID VARCHAR(10)  NULL,      #性别
     * 	Birthday DATETIME NULL,       #出生日期
     * 	Address VARCHAR(100)  NULL,    #联系地址
     * 	ContactTel VARCHAR(50)  NULL, #联系电话
     * 	Email VARCHAR(50)  NULL,      #电子邮箱
     * 	Mobile VARCHAR(50)  NULL,     #手机
     * 	IsDuty VARCHAR(10)  NULL,     #是否在职
     * 	OnDutyDate DATETIME NULL,     #入职时间
     * 	OffDutyDate DATETIME NULL,    #离职时间
     * 	remark VARCHAR(500)  NULL   #备注
     * 	#IsDelete VARCHAR(10)   NULL,  #是否删除
     * 	#CreateEmpID VARCHAR(50)  NULL,#创建人ID
     * 	#CreateDate DATETIME NULL,     #创建时间
     * 	#LastEmpID VARCHAR(50)  NULL,  #修改人ID
     * 	#LastDate DATETIME NULL        #修改时间
     * )
     */

    /**
     * 主键id
     */
    private String userID;
    /**
     * 所属单位code
     */
    private String jctID;
    /**
     * 用户姓名
     */
    private String userName;
    /**
     * 登录名
     */
    private String logonName;
    /**
     * 登录密码
     */
    private String logonPwd;
    /**
     * 性别
     */
    private String sexID;
    /**
     * 出生日期
     */
    private Date birthday;
    /**
     * 联系地址
     */
    private String address;
    /**
     * 联系电话
     */
    private String contactTel;
    /**
     * 邮箱
     */
    private String email;
    /**
     * 手机号
     */
    private String mobile;
    /**
     * 是否在职
     */
    private String isDuty;
    /**
     * 入职时间
     */
    private Date onDutyDate;
    /**
     * 离职时间
     */
    private Date offDutyDate;
    /**
     * 备注
     */
    private String remark;
    /**
     * 是否删除
     */
    private String isDelete;
    /**
     * 创建人ID
     */
    private String createEmpID;
    /**
     * 创建时间
     */
    private Date createDate;
    /**
     * 修改人ID
     */
    private String lastEmpID;
    /**
     * 修改时间
     */
    private Date lastDate;

    /**************************非持久化javabean的属性**********************************/
    /**
     * viewflag:用来判断跳转的是编辑页面还是查看用户信息的页面
     *   * viewflag=1：表示跳转的是查看用户信息的页面
     *   * viewflag=null：表示跳转的时候编辑用户信息的页面
     */
    private String viewflag;

    /**用于使用struts2的ajax进行对用户名的校验，使用message用来存放返回结果*/
    private String message;

    /**
     * md5flag:用来判断是否对密码进行加密
     *     md5flag=null：此时表示新增或者在修改操作时修改了密码，此时都需要对密码进行加密
     *     md5flag=1：此时表示在修改操作时没有对密码进行修改，此时不需要对密码进行加密
     */
    private String md5flag;


    /**
     * flag:用来判断用户的复选框是否被选中
     *   * 如果系统中所有的用户包含了当前角色拥有的用户，此时页面的复选框要被选中，设置flag=1
     *   * 如果系统中所有的用户没有包含当前角色拥有的用户，此时页面的复选框不能被选中，设置flag=2
     */
    private String flag;


    /**************************非持久化javabean的属性**********************************/


}
