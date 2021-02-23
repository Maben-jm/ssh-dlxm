package com.maben.dlxm.util;

import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class FileUploadUtils {

	/**
	 * 完成附件的上传，上传到项目路径的upload文件夹下，并返回文件存放的路径path
	 * */
	public static String fileReturnPath(File file) {
		//获取upload文件夹的路径
		String basePath = ServletActionContext.getServletContext().getRealPath("/upload");
		//日期的文件夹，使用当前时间组织成年月日的文件夹的形式
		String datePath = new SimpleDateFormat("/yyyy/MM/dd/").format(new Date());
		//文件名称
		String name = UUID.randomUUID().toString()+".doc";
		//如果日期的路径的文件夹不存在，需要先建立文件夹
		File dateFile = new File(basePath+datePath);
		if(!dateFile.exists()){
			dateFile.mkdirs();//创建多个文件夹
		}
		//组织路径path
		String path = basePath+datePath+name;
		//文件上传
		// 将原目标文件复制到指定的文件夹下,这样临时文件会越来越多，所以不用
//		FileUtils.copyFile(srcFile, destFile)
		File newFile = new File(path);//现路径
		file.renameTo(newFile);
		return path;
	}

	/**测试附件上传*/
	public static void main(String[] args) {
		File file1 = new File("f:/dir/a.txt");//原路径
		File file2 = new File("f:/dir/dir22222/a.txt");//现路径
		boolean flag = file1.renameTo(file2);
		System.out.println("flag:"+flag);
	}

}
