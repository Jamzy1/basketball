package com.basketball.dao;

import com.basketball.pojo.Activity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ActivityMapper {
    //添加活动
    int addActivity(Activity activity);

    //删除活动
    int deleteActivityById(@Param("activityId") int activityId);

    //修改活动信息
    int updateActivity(Activity activity);

    //通过Id查询活动信息
    Activity queryActivityById(@Param("activityId")int activityId);

    //查询全部活动
    List<Activity> queryAllActivity();

}
