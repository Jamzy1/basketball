package com.basketball.service;

import com.basketball.pojo.Plan;


import java.util.List;

public interface PlanService {

    int addPlan(Plan plan);


    int deletePlanById( int planId);


    int updatePlan(Plan plan);


    Plan queryPlanById(int planId);


    List<Plan> queryAllPlan();


    Plan queryPlanByName(String planName);
}
