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

    /**
     * flag:用来判断权限的复选框是否被选中
     *   * 如果系统中所有的权限包含了当前角色具有的权限，此时页面的复选框要被选中，设置flag=1
     *   * 如果系统中所有的权限没有包含当前角色具有的权限，此时页面的复选框不能被选中，设置flag=2
     */
    private String flag;
}
