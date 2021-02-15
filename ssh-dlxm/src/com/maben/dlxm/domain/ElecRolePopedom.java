package com.maben.dlxm.domain;

import lombok.Data;

import java.util.Date;

@Data
public class ElecRolePopedom {
    /**
     * CREATE TABLE Elec_Role_Popedom(
     * RoleID VARCHAR(50)  NOT NULL,      #主键ID
     * Popedomcode VARCHAR(5000)   NULL,    #配置web文件中权限的编码code的字符串连接
     * remark VARCHAR(5000)  NULL       #备注
     * #IsDelete VARCHAR(10)   NULL,       #是否删除
     * #CreateEmpCode VARCHAR(50)  NULL,   #创建人
     * #CreateDate DATETIME NULL           #创建时间
     * )
     */
    private String roleID;//     #主键ID
    private String popedomcode;//    #配置web文件中权限的编码code的字符串连接
    private String remark;//     #备注
    private String isDelete;//     #是否删除
    private String createEmpCode;//#创建人
    private Date createDate;//   #创建时间
}
