package com.basketball.controller;


import com.basketball.pojo.Member;
import com.basketball.pojo.Record;
import com.basketball.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/record")
public class RecordController {

    @Autowired
    @Qualifier("RecordServiceImpl")
    private RecordService recordService;

    //跳转到主页
    @RequestMapping("/toMain")
    public String toIndexPaper(){
        return "main";
    }

    //展示全部
    @RequestMapping("/allRecord")
    public String list(Model model){
        List<Record> list = recordService.queryAllRecord();

        model.addAttribute("list",list);
        return "allRecord";
    }

    //跳转到增加
    @RequestMapping("/toAddRecord")
    public String toAdd(){
        return "addRecord";
    }

    //添加
    @RequestMapping("/addRecord")
    public String addRecord(Record record){
        recordService.addRecord(record);
        return "redirect:/record/allRecord";
    }

    //跳转到修改
    @RequestMapping("/toUpdate")
    public String toUpdate(int id,Model model){
        Record record = recordService.queryRecordById(id);
        model.addAttribute("record",record);
        return "updateRecord";
    }

    //修改
    @RequestMapping("/updateRecord")
    public String updateRecord(Record record){
        recordService.updateRecord(record);
        return "redirect:/record/allRecord";
    }

    //删除
    @RequestMapping("/deleteRecord")
    public String deleteRecord(int id){
        recordService.deleteRecordById(id);
        return "redirect:/record/allRecord";
    }

    //查询单个信息
    @RequestMapping("/queryRecord1")
    public String queryRecord1(int queryRecordId,Model model){
        Record record = recordService.queryRecordById(queryRecordId);
        List<Record> list = new ArrayList<>();
        list.add(record);
        if (record==null){
            list = recordService.queryAllRecord();
            model.addAttribute("error","查无此记录");
        }
        model.addAttribute("list",list);
        return "allRecord";
    }
}
