package com.maben.dlxm.domain;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
    @Data会为实体类自动生成setter/getter、equals、canEqual、hashCode、toString方法，
    如为final属性，则不会为该属性生成setter方法。
 */
@Data
public class ElecCommonMsg implements Serializable {

    /**
     *  CREATE TABLE Elec_CommonMsg(
     * 	ComID VARCHAR(50)  NOT NULL,    #Ö÷¼üID
     * 	StationRun VARCHAR(5000)  NULL, #Õ¾µãÔËÐÐÇé¿ö
     * 	DevRun VARCHAR(5000)  NULL,    #Éè±¸ÔËÐÐÇé¿ö
     * 	CreateDate DATETIME NULL        #´´½¨ÈÕÆÚ
     * 	#CreateEmpCode VARCHAR(50)  NULL,#´´½¨ÈË
     *
     * )
     */
    /**
     * 主键id
     */
    private String comID;
    /**
     * 站点运行情况
     */
    private String stationRun;

    /**
     * 设备运行情况
     */
    private String devRun;
    /**
     * 创建日期
     */
    private Date createDate;


}
