package com.basketball.controller;


import com.basketball.pojo.Member;
import com.basketball.pojo.Staff;
import com.basketball.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/staff")
public class StaffController {

    @Autowired
    @Qualifier("StaffServiceImpl")
    private StaffService staffService;

    //查询全部干事，返回干事列表
    @RequestMapping("/allStaff")
    public String list(Model model){
        List<Staff> list=staffService.queryAllStaff();
        model.addAttribute("list",list);
        return "allStaff";
    }

    //跳转到增加干事页面
    @RequestMapping("/toAddStaff")
    public String toAddPaper(){
        return "addStaff";
    }


    //添加干事请求
    @RequestMapping("/addStaff")
    public String addStaff(Staff staff){
        staffService.addStaff(staff);
        return "redirect:/staff/allStaff";
    }

    //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id,Model model){
        Staff staff = staffService.queryStaffById(id);
        model.addAttribute(staff);
        return "updateStaff";
    }
    //修改干事信息
    @RequestMapping("/updateStaff")
    public String updateStaff(Staff staff){
        staffService.updateStaff(staff);
        return "redirect:/staff/allStaff";
    }

    //删除干事信息
    @RequestMapping("/deleteStaff")
    public String deleteStaff(int id){
        staffService.deleteStaffById(id);
        return "redirect:/staff/allStaff";
    }

    //查询单个干事信息
    @RequestMapping("/queryStaff1")
    public String queryStaff1(String queryStaffName,Model model){
        Staff staff = staffService.queryStaffByName(queryStaffName);
        List<Staff> list=new ArrayList<>();
        list.add(staff);
        if (staff==null){
            list = staffService.queryAllStaff();
            model.addAttribute("error4","查无此人");
        }
        model.addAttribute("list",list);
        return "allStaff";
    }

    //跳转到会员登陆页面
    @RequestMapping("/toLogin2")
    public String toLoginPaper(){
        return "login2";
    }

    //登陆验证
    boolean isMe;
    @RequestMapping("/login2")
    public String login(HttpServletRequest request, HttpServletResponse response,
                        HttpSession session, int sno2, String passwords2, Model model, @RequestParam(required=false) String isMemory){

        if(isMemory==null){
            isMe=false;
        }else{
            isMe=true;
        }

        Staff staff = staffService.queryStaffById(sno2);
        String name0 = request.getParameter("sno2");
        String name1 = request.getParameter("passwords2");
        if (isMe & staff!=null & staff.getStaffPwd().equals(passwords2)){

            Cookie sno1 = new Cookie("sno2", name0);
            sno1.setMaxAge(7200);
            response.addCookie(sno1);

            Cookie passwords1 = new Cookie("passwords2", name1);
            passwords1.setMaxAge(3600);
            response.addCookie(passwords1);
        }

        if(staff==null || !(staff.getStaffPwd().equals(passwords2))){
            model.addAttribute("error3","账号或密码有误");
            return "login2";
        }
        session.setAttribute("userLoginInfo",name0);
        return "main2";
    }

    //跳转到主页
    @RequestMapping("/toMain2")
    public String toMain(){
        return "main2";
    }

    //跳转到注册页
    @RequestMapping("/toRegistered")
    public String toRegisterPaper(){
        return "registered2";
    }

    //注册会员
    @RequestMapping("/registered2")
    public String registered(Staff staff){
        staffService.addStaff(staff);
        return "login2";
    }

}
