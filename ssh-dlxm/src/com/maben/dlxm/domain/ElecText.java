package com.maben.dlxm.domain;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
    @Data会为实体类自动生成setter/getter、equals、canEqual、hashCode、toString方法，
    如为final属性，则不会为该属性生成setter方法。
 */
@Data
public class ElecText implements Serializable {

    /**
     *  CREATE TABLE Elec_Text(
     *     -> textID varchar(50) not null,
     *     -> textName varchar(50),
     *     -> textDate datetime,
     *     -> textRemark varchar(500)
     *     -> );
     */
    private String textId;
    private String textName;
    private Date textDate;
    private String textRemark;


}
