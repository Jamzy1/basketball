package com.basketball.dao;

import com.basketball.pojo.Plan;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PlanMapper {

    int addPlan(Plan plan);


    int deletePlanById(@Param("planId") int PlanId);


    int updatePlan(Plan plan);


    Plan queryPlanById(@Param("planId")int PlanId);


    List<Plan> queryAllPlan();


    Plan queryPlanByName(@Param("planName") String PlanName);
}
