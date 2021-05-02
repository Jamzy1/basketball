package com.basketball.controller;

import org.springframework.stereotype.Controller;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;

@Controller
@WebListener
public class ContextListener implements ServletRequestListener {
    private int count=0;
    public void requestInitialized(ServletRequestEvent re) {
        HttpServletRequest request = (HttpServletRequest)re.getServletRequest();
        if(request.getRequestURI().endsWith("main.jsp")) {
            count++;
            re.getServletContext().setAttribute("count", new Integer(count));
        }
    }
    public void requestDestroyed(ServletRequestEvent re) {}
}
