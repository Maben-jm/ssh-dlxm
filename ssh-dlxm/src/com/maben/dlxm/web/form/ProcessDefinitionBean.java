package com.maben.dlxm.web.form;

import lombok.Data;

import java.io.File;
import java.io.InputStream;

@Data
public class ProcessDefinitionBean {

	//流程定义的id
	private String id;
	//流程定义的key
	private String key;
	
	//获取部署流程定义的文件（zip）
	private File upload;
	//查看流程图的输入流的文件
	private InputStream inputStream;

}
