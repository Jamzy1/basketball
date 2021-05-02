package com.basketball.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Activity {
    private int ActivityId;
    private int NewId;
    private int SuppId;
    private int PlanId;
}
