package com.basketball.dao;

import com.basketball.pojo.Staff;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StaffMapper {

    //招收干事
    int addStaff(Staff staff);

    //删除干事
    int deleteStaffById(@Param("staffId") int staffId);

    //修改干事信息
    int updateStaff(Staff staff);

    //查询干事信息
    Staff queryStaffById(@Param("staffId") int staffId);

    //查询全部会员
    List<Staff> queryAllStaff();

    //通过名字查
    Staff queryStaffByName(@Param("staffName") String staffName);
}
