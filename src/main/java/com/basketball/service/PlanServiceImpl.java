package com.basketball.service;

import com.basketball.dao.PlanMapper;
import com.basketball.pojo.Plan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PlanServiceImpl implements PlanService{

    //service调用dao层
    @Autowired
    private PlanMapper planMapper;
    public void setPlanMapper(PlanMapper planMapper) {
        this.planMapper = planMapper;
    }

    public int addPlan(Plan plan) {
        return planMapper.addPlan(plan);
    }

    public int deletePlanById(int planId) {
        return planMapper.deletePlanById(planId);
    }

    public int updatePlan(Plan plan) {
        return planMapper.updatePlan(plan);
    }

    public Plan queryPlanById(int planId) {
        return planMapper.queryPlanById(planId);
    }

    public List<Plan> queryAllPlan() {
        return planMapper.queryAllPlan();
    }

    public Plan queryPlanByName(String planName) {
        return planMapper.queryPlanByName(planName);
    }
}
