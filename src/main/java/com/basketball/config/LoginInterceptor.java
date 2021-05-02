package com.basketball.config;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws ServletException, IOException{
        //如果是登陆页面则放行

        if (request.getRequestURI().contains("login")){
            return true;
        }
        if (request.getRequestURI().contains("toMain")){
            return true;
        }
        if (request.getRequestURI().contains("toRegistered")){
            return true;
        }
        if (request.getRequestURI().contains("registered1")){
            return true;
        }
        if (request.getRequestURI().contains("b1")){
            return true;
        }
        if (request.getRequestURI().contains("goOut")){
            return true;
        }
        if (request.getRequestURI().contains("toLogin2")){
            return true;
        }
        if (request.getRequestURI().contains("toLogin")){
            return true;
        }

        if (request.getRequestURI().contains("toIndex")){
            return true;
        }

        HttpSession session = request.getSession();

        //如果用户已登录也放行
        if (session.getAttribute("userLoginInfo")!=null){
            return true;
        }

        //用户没有登陆则跳转到登录页面
        request.getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request,response);
        return false;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception{

    }
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e)throws Exception{

    }
}
