package com.maben.dlxm.web.form;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
@Data
public class ProcessVariables implements Serializable {

	private Long applicationID;        			//主键ID
	private Long applicationTemplateID;			//申请模板表的主键 
	private String title;    			 		//上传的文件标题(申请文件模板名称_申请人姓名_申请时间)
	private String path; 						//上传的文件的存储路径
	private String applicationUserID;      		//申请人ID
	private String applicationLogonName;      	//申请人登录名
	private String applicationUserName;      	//申请人姓名
	private Date applyTime;      				//申请日期
	private String status;      			 	//当前审批状态
	

	
}
