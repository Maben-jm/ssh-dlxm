package com.maben.dlxm.domain;

import lombok.Data;

import java.io.Serializable;

@Data
public class ElecExportFields implements Serializable {
    /**
     * CREATE TABLE Elec_ExportFields(
     * 	BelongTo VARCHAR(10)  NOT NULL,           #所属模块（自然主键），如用户管理为：5-1
     * 	ExpNameList VARCHAR(5000)  NULL,          #导出字段的中文名
     * 	ExpFieldName VARCHAR(5000)  NULL,         #导出字段的英文名
     * 	NoExpNameList VARCHAR(5000)  NULL,        #未导出字段的中文名
     * 	NoExpFieldName VARCHAR(5000)  NULL        #未导出字段的英文名
     * )
     */

    /**
     * 所属模块（自然主键），如用户管理为：5-1
     */
    private String      belongTo;
    /**
     * 导出字段的中文名
     */
    private String      expNameList;
    /**
     * 导出字段的英文名
     */
    private String      expFieldName;
    /**
     * 未导出字段的中文名
     */
    private String      noExpNameList;
    /**
     * 未导出字段的英文名
     */
    private String      noExpFieldName;

}
