package com.basketball.service;

import com.basketball.dao.StaffMapper;
import com.basketball.pojo.Staff;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StaffServiceImpl implements StaffService {

    @Autowired
    private StaffMapper staffMapper;
    public void setStaffMapper(StaffMapper staffMapper){
        this.staffMapper=staffMapper;
    }
    public int addStaff(Staff staff) {
        return staffMapper.addStaff(staff);
    }

    @Override
    public int deleteStaffById(int staffId) {
        return staffMapper.deleteStaffById(staffId);
    }

    @Override
    public int updateStaff(Staff staff) {
        return staffMapper.updateStaff(staff);
    }

    @Override
    public Staff queryStaffById(int staffId) {
        return staffMapper.queryStaffById(staffId);
    }

    @Override
    public List<Staff> queryAllStaff() {
        return staffMapper.queryAllStaff();
    }

    @Override
    public Staff queryStaffByName(String staffName)  {
        return staffMapper.queryStaffByName(staffName);
    }
}
