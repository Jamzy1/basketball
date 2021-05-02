package com.basketball.dao;

import com.basketball.pojo.Member;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MemberMapper {
    //注册会员
    int addMember(Member member);

    //删除会员
    int deleteMemberById(@Param("memberId") int memberId);

    //修改会员信息
    int updateMember(Member member);

    //查询会员信息
    Member queryMemberById(@Param("memberId")int memberId);

    //查询全部会员
    List<Member> queryAllMember();

    //通过名字查
    Member queryMemberByName(@Param("memberName") String MemberName);
}
