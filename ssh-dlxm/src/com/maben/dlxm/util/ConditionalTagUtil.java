package com.maben.dlxm.util;

import org.apache.struts2.ServletActionContext;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

public class ConditionalTagUtil extends SimpleTagSupport {

	private String pattern;
	
	/**是否进入标签体的内部，显示jsp的内容*/
	@Override
	public void doTag() throws JspException, IOException {
		//获取系统所具有的功能权限
		String popedom = (String) ServletActionContext.getRequest().getSession().getAttribute("globle_popedom");
		//多个权限，页面传递给pattern的值是aa,ab,ac
		if(pattern!=null && pattern.length()>2){
			String [] arrays = pattern.split(",");
			if(arrays!=null && arrays.length>0){
				for(String array:arrays){
					if(popedom.contains(array)){
						//显示jsp包含的内容
						this.getJspBody().invoke(null);
						//退出循环
						break;
					}
				}
			}
		}
		//单个权限，页面传递给pattern的值是aa
		else{
			if(popedom.contains(pattern)){
				//显示jsp包含的内容
				this.getJspBody().invoke(null);
			}
		}
	}

	public void setPattern(String pattern) {
		this.pattern = pattern;
	}
	
	
}
