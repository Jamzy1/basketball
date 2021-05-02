package com.basketball.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Staff {
    private int StaffId;
    private String StaffName;
    private String StaffSex;
    private int StaffAge;
    private String StaffPwd;
}
