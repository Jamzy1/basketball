package com.basketball.controller;


import com.basketball.pojo.Member;
import com.basketball.pojo.Supp;
import com.basketball.service.SuppService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/supp")
public class SuppController {

    @Autowired
    @Qualifier("SuppServiceImpl")
    private SuppService suppService;

    //跳转到主页
    @RequestMapping("/toMain")
    public String toIndexPaper(){
        return "main";
    }

    //展示
    @RequestMapping("/allSupp")
    public String list(Model model){
        List<Supp> list = suppService.queryAllSupp();
        model.addAttribute("list",list);
        return "allSupp";
    }

    //跳转到增加
    @RequestMapping("/toAddSupp")
    public String toAdd(){
        return "addSupp";
    }

    //增加
    @RequestMapping("/addSupp")
    public String addSupp(Supp supp){
        suppService.addSupp(supp);
        return "redirect:/supp/allSupp";
    }


    //跳转到修改
    @RequestMapping("/toUpdate")
    public String toUpdate(int id,Model model){
        Supp supp = suppService.querySuppById(id);
        model.addAttribute("supp",supp);
        return "updateSupp";
    }

    //修改
    @RequestMapping("/updateSupp")
    public String updateSupp(Supp supp){
        suppService.updateSupp(supp);
        return "redirect:/supp/allSupp";
    }

    //删除
    @RequestMapping("/deleteSupp")
    public String deleteSupp(int id){
        suppService.deleteSuppById(id);
        return "redirect:/supp/allSupp";
    }

    //查询单个
    @RequestMapping("/querySupp1")
    public String querySupp1(int querySuppId,Model model){
        Supp supp = suppService.querySuppById(querySuppId);
        List<Supp> list = new ArrayList<>();
        list.add(supp);
        if (supp==null){
            list = suppService.queryAllSupp();
            model.addAttribute("error","查无此物资方案");
        }
        model.addAttribute("list",list);
        return "allSupp";
    }


}
