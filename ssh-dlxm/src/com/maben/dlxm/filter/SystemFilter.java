package com.maben.dlxm.filter;

import com.maben.dlxm.domain.ElecUser;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

public class SystemFilter implements Filter {
    /**初始化*/
    //定义可以进行放行的连接（表示在没有Session的情况下要放行）
    List<String> list = new ArrayList<String>();
    public void init(FilterConfig config) throws ServletException {
        list.add("/index.jsp");
        list.add("/image.jsp");
        list.add("/system/elecMenuAction_home.do");

        list.add("/error.jsp");
        list.add("/system/elecMenuAction_logout.do");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String path = request.getServletPath();
//        使用过滤器完成 在进去登录页面前，从cookie中获取登录名和密码 并返回到页面上
        this.forwardIndexPage(request,path);
        //判断如果当前的访问的url连接在可以放行的连接集合中，此时放行
        if(list.contains(path)){
            filterChain.doFilter(request, response);
            return;
        }
        //获取系统存放用户信息的Session，如果Session不为null，此时说明是正常访问系统，则要放行，session只能完成粗颗粒度权限控制
        ElecUser elecUser = (ElecUser) request.getSession().getAttribute("globle_user");
        if(elecUser!=null){
            //完成细颗粒权限控制
            //从Session中获取当前用户能访问到url连接
            List<String> list = (List<String>) request.getSession().getAttribute("popedomList");
            //使用url连接与当前访问的连接path进行比对，如果包含，说明正常访问，此时可以放行
            if(list.contains(path)){
                filterChain.doFilter(request, response);
                return;
            }
        }
        //反之，如果Session为null，此时不能放行，要重定向到首页面
        //response.sendRedirect(request.getContextPath()+"/");
        //反之，如果Session为null，此时不能放行，定向到错误页面error.jsp，友好转发，系统提示操作错误，5秒钟后跳转到首页面
        response.sendRedirect(request.getContextPath()+"/error.jsp");
    }

    /**使用过滤器完成跳转到index.jsp页面之前，从Cookie中获取用户名和密码，并将值显示到页面上*/
    private void forwardIndexPage(HttpServletRequest request,String path) {
        if(path!=null && path.equals("/index.jsp")){
            //存放用户名
            String name = "";
            //存放密码
            String password = "";
            //复选框选中
            String checked = "";
            //从Cookie中获取name和password
            Cookie[] cookies = request.getCookies();
            if(cookies!=null && cookies.length>0){
                for(Cookie cookie:cookies){
                    if(cookie.getName().equals("name")){//获取用户名
                        //处理中文问题，要对cookie中的值进行解码
                        name = cookie.getValue();
                        try {
                            name = URLDecoder.decode(name, "UTF-8");
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                        }
                        checked = "checked";
                    }
                    if(cookie.getName().equals("password")){//获取密码
                        password = cookie.getValue();
                    }
                }
            }
            //将用户名和密码放置到request作用域中
            request.setAttribute("name", name);
            request.setAttribute("password", password);
            request.setAttribute("checked", checked);
        }

    }

    @Override
    public void destroy() {

    }
}
