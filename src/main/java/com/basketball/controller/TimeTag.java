package com.basketball.controller;

import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.JspTag;
import javax.servlet.jsp.tagext.SimpleTag;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeTag implements SimpleTag {
    Date date = new Date();
    SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd     hh:mm:ss");
    JspContext jspContext = null;
    JspTag parent = null;
    public void setJspContext(JspContext jspContext){
        this.jspContext = jspContext;
    }
    public void setParent(JspTag parent){
        this.parent = parent;
    }
    public void setJspBody(JspFragment jspBody){
    }
    public JspTag getParent(){
        return parent;
    }
    public void doTag() throws JspException, IOException {
        JspWriter out = jspContext.getOut();

        out.print("<p style=\"color:black\">"+dateFormat.format(date)+"</p >");
    }
}
