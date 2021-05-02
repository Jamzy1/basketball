package com.basketball.controller;

import com.basketball.pojo.New;
import com.basketball.service.NewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;


@Controller
@RequestMapping("/news")
public class NewController {



    @Autowired
    @Qualifier("NewServiceImpl")
    private NewService newService;


    //跳转到主页
    @RequestMapping("/toMain")
    public String toIndexPaper(){
        return "main";
    }


    //展示所有新闻
    @RequestMapping("/allNews")
    public String list(Model model){
        List<New> list = newService.queryAllNew();
        model.addAttribute("list",list);
        return "allNews";
    }


    //跳转到增加页面
    @RequestMapping("/toAddNews")
    public String toAddNews(){
            return "addNews";
    }



    //增加新闻
    @RequestMapping("/addNews")
    public String addNews(New news){
        newService.addNew(news);
        return "redirect:/news/allNews";
    }
    //查询单个新闻信息
    @RequestMapping("/queryNew1")
    public String queryNew1(int queryNewId,Model model){
        New news = newService.queryNewById(queryNewId);
        List<New> list = new ArrayList<>();
        list.add(news);
        if (news==null){
            list = newService.queryAllNew();
            model.addAttribute("error","查无此人");
        }
        model.addAttribute("list",list);
        return "allNews";
    }


    //跳转到修改
    @RequestMapping("toUpdate")
    public String toUpdatePaper(int id,Model model){
        New news = newService.queryNewById(id);
        model.addAttribute("news",news);
        return "updateNews";
    }



    //修改新闻
    @RequestMapping("/updateNews")
    public String updateNews(New news){
        newService.updateNew(news);
        return "redirect:/news/allNews";
    }



    //删除新闻
    @RequestMapping("/deleteNew")
    public String deleteNew(int id){
        newService.deleteNewById(id);
        return "redirect:/news/allNews";
    }

}
