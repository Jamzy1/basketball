package com.basketball.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Record {
    private int RecordId;
    private int MemberId;
    private int ActivityId;
    private String Win;
    private String Point;

}
