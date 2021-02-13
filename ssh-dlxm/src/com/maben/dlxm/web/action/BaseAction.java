package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecText;
import com.maben.dlxm.util.GenericSuperClass;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// ActionSupport ：集成ActionSupport
// implements ModelDriven<ElecText> ****  struts2的模型注入
public class BaseAction<T> extends ActionSupport implements ModelDriven<T>, ServletRequestAware, ServletResponseAware {
    private T model;
    protected HttpServletRequest request;
    protected HttpServletResponse response;

    public BaseAction() {
        //泛型转实体类
        Class entityClass = GenericSuperClass.getGenericSuperclass(this.getClass());
        try {
            model = (T) entityClass.newInstance();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public T getModel() {
        return model;
    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        this.request = httpServletRequest;
    }

    @Override
    public void setServletResponse(HttpServletResponse httpServletResponse) {
        this.response = httpServletResponse;
    }
}
