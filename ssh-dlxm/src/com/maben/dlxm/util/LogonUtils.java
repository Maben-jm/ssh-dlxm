package com.maben.dlxm.util;

import org.apache.commons.lang.StringUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.concurrent.TimeUnit;

public class LogonUtils {

	/**判断验证码输入是否正确*/
	public static boolean checkNumber(HttpServletRequest request) {
		//获取页面上传递的验证码的值
		String checkNumber = request.getParameter("checkNumber");
		if(StringUtils.isBlank(checkNumber)){
			return false;
		}
		//获取Session中生成验证码的值
		String CHECK_NUMBER_KEY = (String) request.getSession().getAttribute("CHECK_NUMBER_KEY");
		if(StringUtils.isBlank(CHECK_NUMBER_KEY)){
			return false;
		}
		return checkNumber.equalsIgnoreCase(CHECK_NUMBER_KEY);
	}

	/**添加记住我功能*/
	public static void remeberMe(HttpServletRequest request,
			HttpServletResponse response, String name, String password) {
		//使用2个Cookie分别存放用户名和密码
		//处理name中出现中文的情况
		try {
			name = URLEncoder.encode(name, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		Cookie nameCookie = new Cookie("name",name);
		Cookie passwordCookie = new Cookie("password",password);
		//设置Cookie的有效路径（项目的根路径）
		nameCookie.setPath(request.getContextPath()+"/");
		passwordCookie.setPath(request.getContextPath()+"/");
		//获取页面复选框的值
		String remeberMe = request.getParameter("remeberMe");
		//如果页面的复选框被选中，设置Cookie的有效时间（1周）
		if(remeberMe!=null && remeberMe.equals("yes")){
			nameCookie.setMaxAge((int) TimeUnit.DAYS.toSeconds(7));
			passwordCookie.setMaxAge((int) TimeUnit.DAYS.toSeconds(7));
		}
		//如果页面的复选框不被选中，清空Cookie的有效时间
		else{
			nameCookie.setMaxAge(0);
			passwordCookie.setMaxAge(0);
		}
		//将Cookie放置到Response对象中
		response.addCookie(nameCookie);
		response.addCookie(passwordCookie);
	}

}
