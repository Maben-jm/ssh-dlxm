package com.maben.dlxm.domain;

import lombok.Data;

import java.util.Date;

@Data
public class ElecUserRole {
    /**
     * CREATE TABLE Elec_User_Role(
     * SeqID INT NOT NULL,               #主键ID
     * UserID VARCHAR(50)   NULL,        #用户ID
     * RoleID VARCHAR(50)   NULL,        #角色ID
     * remark VARCHAR(5000)  NULL      #备注
     * #CreateEmpCode VARCHAR(50)  NULL,  #创建人
     * #CreateDate DATETIME NULL          #创建时间
     * )
     */
    private int seqID;//         #主键ID
    private String userID;//        #用户ID
    private String roleID;//        #角色ID
    private String remark;//      #备注
    private String createEmpCode;// #创建人
    private Date createDate;//    #创建时间
    /************************非持久化javabean属性**************************/
    //存放选中的权限编号
    private String[] selectoper;
    //存放选中的用户ID
    private String[] selectuser;
    /************************非持久化javabean属性**************************/
}
