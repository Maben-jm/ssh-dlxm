package com.maben.dlxm.domain;

import java.io.File;
import java.io.InputStream;
import java.io.Serializable;

@SuppressWarnings("serial")
/**持久化对象的javabean*/
public class ElecApplicationTemplate implements Serializable {

	
	private Long id;        			 //主键ID
	private String name;    			 //名称
	private String processDefinitionKey; //流程定义的key
	private String path;      			 //上传的模板文件的存储位置
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getProcessDefinitionKey() {
		return processDefinitionKey;
	}
	public void setProcessDefinitionKey(String processDefinitionKey) {
		this.processDefinitionKey = processDefinitionKey;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	/*************************非持久化javabean属性**************************/
	//表示上传的申请模板文件
	private File upload;
	
	//文件下载的输入流
	private InputStream inputStream;

	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public InputStream getInputStream() {
		return inputStream;
	}
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	
	
	
	/*************************非持久化javabean属性**************************/
	
	
}
