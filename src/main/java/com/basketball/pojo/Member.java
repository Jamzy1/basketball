package com.basketball.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {
    private int MemberId;
    private String MemberName;
    private String MemberSex;
    private int MemberAge;
    private String MemberPwd;
}
