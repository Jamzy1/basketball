package com.basketball.pojo;

import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Plan {
    private int PlanId;
    private String PlanName;
    private String PlanTime;
    private String PlanPlace;
    private String PlanNumber;
    private String PlanDuration;
}
