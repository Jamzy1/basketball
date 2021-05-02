package com.basketball.controller;

import com.basketball.pojo.Plan;
import com.basketball.service.PlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;



@Controller
@RequestMapping("/plan")
public class PlanController {
    //controller 调 service 层
    @Autowired
    @Qualifier("PlanServiceImpl")
    private PlanService planService;

    //查询所有活动详细信息，返回活动列表
    @RequestMapping("/allPlan")
    public String list(Model model){
        List<Plan> list = planService.queryAllPlan();

        model.addAttribute("list",list);
        return "allPlan";
    }

    //跳转到增加活动界面
    @RequestMapping("/toAddPlan")
    public String toAddPaper(){
        return "addPlan";
    }

    //添加活动的请求
    @RequestMapping("/addPlan")
    public String addPlan(Plan plan){
        planService.addPlan(plan);
        return "redirect:/plan/allPlan";
    }

    //跳转到修改页面
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id,Model model){
        Plan plan = planService.queryPlanById(id);
        model.addAttribute("plan",plan);
        return "updatePlan";
    }

    //修改活动信息
    @RequestMapping("/updatePlan")
    public String updatePlan(Plan plan){
        planService.updatePlan(plan);
        return "redirect:/plan/allPlan";
    }

    //删除活动信息
    @RequestMapping("/deletePlan")
    public String deletePlan(int id){
        planService.deletePlanById(id);
        return "redirect:/plan/allPlan";
    }

    //查询单个会员信息
    @RequestMapping("/queryPlan")
    public String queryPlan(String queryPlanName,Model model){
        Plan plan = planService.queryPlanByName(queryPlanName);
        List<Plan> list = new ArrayList<>();
        list.add(plan);
        if (plan==null){
            list = planService.queryAllPlan();
            model.addAttribute("error","无具体详情");
        }
        model.addAttribute("list",list);
        return "allPlan";
    }
}
