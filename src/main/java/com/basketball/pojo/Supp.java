package com.basketball.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Supp {
    private int SuppId;
    private int StaffId;
    private String SuppNumber;
    private String SuppKind;
}
