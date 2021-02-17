package com.maben.dlxm.util;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.StrutsStatics;

import javax.servlet.http.HttpServletRequest;

@SuppressWarnings("serial")
public class ErrorInterceptor implements Interceptor {

    public void init() {

    }

    /**当访问url连接执行xxxxx.do的方法时，先执行intercept方法*/
    public String intercept(ActionInvocation actioninvocation) {

        String result = null; // Action的返回值
        try {
            // 运行被拦截的Action,期间如果发生异常会被catch住
            result = actioninvocation.invoke();
            return result;
        } catch (Exception e) {
            /**
             * 处理异常
             */
            String errorMsg = "出现错误信息，请查看日志！";
            //通过instanceof判断到底是什么异常类型
            if (e instanceof RuntimeException) {
                //未知的运行时异常
                RuntimeException re = (RuntimeException) e;
                //re.printStackTrace();
                errorMsg = re.getMessage().trim();
            }
            //把自定义错误信息
            HttpServletRequest request = (HttpServletRequest) actioninvocation.getInvocationContext().get(StrutsStatics.HTTP_REQUEST);
            /**
             * 发送错误消息到页面
             */
            request.setAttribute("errorMsg", errorMsg);

            /**
             * log4j记录日志
             */
            Log log = LogFactory.getLog(actioninvocation.getAction().getClass());
            log.error(errorMsg, e);
            return "errorMsg";
        }// ...end of catch
    }

    public void destroy() {

    }
}
