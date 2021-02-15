package com.maben.dlxm.domain;

import lombok.Data;

@Data
public class ElecPopedom {
    /**
     * CREATE TABLE Elec_Popedom(
     * CODE VARCHAR(500)   NULL,          #权限Code（主键ID）
     * NAME VARCHAR(500)   NULL,          #权限名称
     * ParentCode VARCHAR(500)  NULL,     #父级权限Code
     * ParentName VARCHAR(500)  NULL,     #父级权限名称
     * Url VARCHAR(5000)   NULL           #权限访问的允许访问的URL连接
     * )
     */
    private String code;//          #权限Code（主键ID）
    private String name;//          #权限名称
    private String parentCode;//    #父级权限Code
    private String parentName;//    #父级权限名称
    private String url;//           #权限访问的允许访问的URL连接
}
