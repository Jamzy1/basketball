package com.basketball.service;

import com.basketball.pojo.Member;

import java.util.List;

public interface MemberService {

    //添加会员
    int addMember(Member member);

    //删除会员
    int deleteMemberById(int memberId);

    //修改会员信息
    int updateMember(Member member);

    //查询会员信息
    Member queryMemberById(int memberId);

    //查询全部会员
    List<Member> queryAllMember();

    //通过名字查
    Member queryMemberByName(String MemberName);
}
