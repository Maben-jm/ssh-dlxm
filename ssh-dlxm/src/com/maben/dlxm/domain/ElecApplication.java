package com.maben.dlxm.domain;

import lombok.Data;

import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
/**持久化对象的javabean*/
@Data
public class ElecApplication implements Serializable {
	
	private Long applicationID;        			//主键ID
	private Long applicationTemplateID;			//申请模板表的主键 
	private String title;    			 		//上传的文件标题(申请文件模板名称_申请人姓名_申请时间)
	private String path; 						//上传的文件的存储路径
	private String applicationUserID;      		//申请人ID
	private String applicationLogonName;      	//申请人登录名
	private String applicationUserName;      	//申请人姓名
	private Date applyTime;      				//申请日期
	private String status;      			 	//当前审批状态
	

	
	
	/*************************非持久化javabean属性**************************/
	public static final String APPLICATION_RUNNING = "1";//审核中
	public static final String APPLICATION_REJECT = "2";//审核不通过
	public static final String APPLICATION_PASS = "3";//审核通过
	
	//任务ID
	private String taskId;
	//连线名称
	private String outcome;
	
	private Long approveID;        			//主键ID
	private String comment;    			 	//审批意见
	private boolean approval; 				//审批结果，是否通过（同意或者不同意）
	private String approveUserID;      		//审批人ID
	private String approveUserName;      	//审批人姓名
	private Date approveTime;      			//审批日期
	
	//上传申请信息文件
	private File upload;
	
	//文件下载
	private InputStream inputStream;

	/*************************非持久化javabean属性**************************/
	
	
}
