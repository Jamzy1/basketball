package com.basketball.controller;

import com.basketball.pojo.Member;
import com.basketball.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/member")
public class MemberController {
    //controller 调 service 层
    @Autowired
    @Qualifier("MemberServiceImpl")
    private MemberService memberService;


    //跳转到主页
    @RequestMapping("/toMain")
    public String toIndexPaper(){
        return "main";
    }
    @RequestMapping("/toIndex")
    public String TP(){
        return "index";
    }

    //查询全部会员，返回会员列表
    @RequestMapping("/allMember")
    public String list(Model model){
        List<Member> list = memberService.queryAllMember();

        model.addAttribute("list",list);
        return "allMember";
    }

    //跳转到增加会员页面
    @RequestMapping("/toAddMember")
    public String toAddPaper(){
        return "addMember";
    }

    //添加会员的请求
    @RequestMapping("/addMember")
    public String addMember(Member member){
        memberService.addMember(member);
        return "redirect:/member/allMember"; //重定向@RequestMapping("/addMember")请求；
    }

    //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id,Model model){
        Member member = memberService.queryMemberById(id);
        model.addAttribute("member",member);
        return "updateMember";
    }

    //修改会员信息
    @RequestMapping("/updateMember")
    public String updateMember(Member member){
        memberService.updateMember(member);
        return "redirect:/member/allMember";
    }

    //删除会员信息
    @RequestMapping("/deleteMember")
    public String deleteMember(int id){
        memberService.deleteMemberById(id);
        return "redirect:/member/allMember";
    }

    //查询单个会员信息
    @RequestMapping("/queryMember1")
    public String queryMember1(String queryMemberName,Model model){
        Member member = memberService.queryMemberByName(queryMemberName);
        List<Member> list = new ArrayList<>();
        list.add(member);
        if (member==null){
            list = memberService.queryAllMember();
            model.addAttribute("error","查无此人");
        }
        model.addAttribute("list",list);
        return "allMember";
    }

    //跳转到会员登陆页面
    @RequestMapping("/toLogin")
    public String toLoginPaper(){
        return "login";
    }

    //验证登陆
    boolean isMe;
    @RequestMapping("/login")
    public String login(HttpServletRequest request, HttpServletResponse response,
                        HttpSession session,int sno, String passwords, Model model, @RequestParam(required=false) String isMemory){
        if(isMemory==null){
            isMe=false;
        }else{
            isMe=true;
        }

        Member member = memberService.queryMemberById(sno);
        String name0 = request.getParameter("sno");
        String name1 = request.getParameter("passwords");

        if (isMe & member!=null & member.getMemberPwd().equals(passwords)){
                Cookie sno1 = new Cookie("sno", name0);
                sno1.setMaxAge(1000);
                response.addCookie(sno1);   //响应给客户端一个cookie

                Cookie passwords1 = new Cookie("passwords", name1);
                passwords1.setMaxAge(1000);
                response.addCookie(passwords1);

        }

        if (member==null|| !(member.getMemberPwd().equals(passwords)) ){
            model.addAttribute("error2","账号或密码有误");
            return "login";
        }
        session.setAttribute("userLoginInfo",name0);
        return "main";
    }


    //注销
    @RequestMapping("/goOut")
    public String goOut(HttpSession session){
        session.invalidate();
        return "index";
    }
    //跳转到注册页
    @RequestMapping("/toRegistered")
    public String toRegisterPaper(){
        return "registered";
    }

    //注册会员
    @RequestMapping("/registered1")
    public String registered(HttpServletRequest request, Member member, int MemberId){
        memberService.addMember(member);
        return "login";
    }

    @RequestMapping(value = "/b1" ,produces = "text/html;charset=UTF-8")  //!!!!!!乱码问题
    @ResponseBody
    public String ajax1(int MemberId){
        Member member1 = memberService.queryMemberById(MemberId);
        String message = "";
        if (member1!=null){
            message = "该会员号已被使用，请更换其它会员号！";
        }else{
            message = "该会员号可以被使用";
        }
        return message;
    }

}
