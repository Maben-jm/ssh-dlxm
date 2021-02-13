package com.maben.dlxm.domain;

import lombok.Data;

import java.io.Serializable;

/**
    @Data会为实体类自动生成setter/getter、equals、canEqual、hashCode、toString方法，
    如为final属性，则不会为该属性生成setter方法。
 */
@Data
public class ElecSystemDDL implements Serializable {

    /**
     *  CREATE TABLE Elec_SystemDDL(
     * 	SeqID INT NOT NULL,          #主键ID(自增长)
     * 	Keyword VARCHAR(20)   NULL,  #数据类型
     * 	DdlCode INT  NULL,           #数据项的code
     * 	DdlName VARCHAR(50)  NULL    #数据项的value
     * )
     */
    /**
     * 主键id
     */
    private Integer seqID;
    /**
     * 数据类型
     */
    private String keyword;
    /**
     * 数据项的code
     */
    private String ddlCode;
    /**
     * 数据项的value
     */
    private String ddlName;


}
