package com.basketball.service;

import com.basketball.dao.ActivityMapper;
import com.basketball.pojo.Activity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ActivityServiceImpl implements ActivityService {
    @Autowired
    private ActivityMapper activityMapper;

    public void setActivityMapper(ActivityMapper activityMapper) {
        this.activityMapper = activityMapper;
    }

    public int addActivity(Activity activity) {
        return activityMapper.addActivity(activity);
    }

    public int deleteActivityById(int activityId) {
        return activityMapper.deleteActivityById(activityId);
    }

    public int updateActivity(Activity activity) {
        return activityMapper.updateActivity(activity);
    }

    public Activity queryActivityById(int activityId) {
        return activityMapper.queryActivityById(activityId);
    }

    @Override
    public List<Activity> queryAllActivity() {
        return activityMapper.queryAllActivity();
    }
}
