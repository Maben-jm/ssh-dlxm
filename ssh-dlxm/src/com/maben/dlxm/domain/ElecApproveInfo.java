package com.maben.dlxm.domain;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
/**持久化对象的javabean*/
@Data
public class ElecApproveInfo implements Serializable {
	
	private Long approveID;        			//主键ID
	private Long applicationID;				//申请信息表的主键
	private String comment;    			 	//审批意见
	private boolean approval; 				//审批结果，是否通过（同意或者不同意）
	private String approveUserID;      		//审批人ID
	private String approveUserName;      	//审批人姓名
	private Date approveTime;      			//审批日期
	

}
