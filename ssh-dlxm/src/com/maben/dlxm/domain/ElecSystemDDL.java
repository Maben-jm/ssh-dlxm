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
    private Integer ddlCode;
    /**
     * 数据项的value
     */
    private String ddlName;



    /********************************存放非持久化javabean属性************************/
    /**
     *
     *   存放数据类型
     */
    private String keywordname;
    /**
     * 用来判断处理业务逻辑的标识
     * typeflag=new：表示新增一种数据类型
     * typeflag=add：表示在已有的数据类型的基础上进行修改和编辑
     */
    private String typeflag;
    /**
     * 用来存放页面的数据项的值
     */
    private String [] itemname;
    /********************************存放非持久化javabean属性************************/


}
