package com.maben.dlxm.domain;

import lombok.Data;

import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
@Data
public class ElecApplicationTemplate implements Serializable {

	
	private Long id;        			 //主键ID
	private String name;    			 //名称
	private String processDefinitionKey; //流程定义的key
	private String path;      			 //上传的模板文件的存储位置
	

	/*************************非持久化javabean属性**************************/
	//表示上传的申请模板文件
	private File upload;
	
	//文件下载的输入流
	private InputStream inputStream;

	/*************************非持久化javabean属性**************************/
	
	
}
