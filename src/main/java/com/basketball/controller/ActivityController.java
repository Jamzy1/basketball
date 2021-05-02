package com.basketball.controller;


import com.basketball.pojo.Activity;
import com.basketball.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/activity")
public class ActivityController {

    @Autowired
    @Qualifier("ActivityServiceImpl")
    private ActivityService activityService;

    //跳转到主页
    @RequestMapping("/toMain")
    public String toIndexPaper(){
        return "main";
    }


    //展示列表
    @RequestMapping("/allActivity")
    public String list(Model model){
        List<Activity> list = activityService.queryAllActivity();
        model.addAttribute("list",list);
        return "allActivity";
    }


    //跳转到增加活动页面
    @RequestMapping("/toAddActivity")
    public String toAddPaper(){
        return "addActivity";
    }

    //添加活动
    @RequestMapping("/addActivity")
    public String addActivity(Activity activity){
        activityService.addActivity(activity);
        return "redirect:/activity/allActivity";
    }



    //跳转到修改
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id,Model model){
        Activity activity = activityService.queryActivityById(id);
        model.addAttribute("activity",activity);
        return "updateActivity";
    }

    //修改
    @RequestMapping("/updateActivity")
    public String UpdateActivity(Activity activity){
        activityService.updateActivity(activity);
        return "redirect:/activity/allActivity";
    }

    //删除
    @RequestMapping("/deleteActivity")
    public String deleteActivity(int id){
        activityService.deleteActivityById(id);
        return "redirect:/activity/allActivity";
    }

    //查询单个
    @RequestMapping("/queryActivity1")
    public String queryActivity1(int queryActivityId,Model model){
        Activity activity = activityService.queryActivityById(queryActivityId);
        List<Activity> list = new ArrayList<>();
        list.add(activity);
        if (activity==null){
            list = activityService.queryAllActivity();
            model.addAttribute("error","查无此活动");
        }
        model.addAttribute("list",list);
        return "allActivity";
    }
}
