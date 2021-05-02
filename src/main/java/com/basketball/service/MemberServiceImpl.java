package com.basketball.service;

import com.basketball.dao.MemberMapper;
import com.basketball.pojo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberServiceImpl implements MemberService{

    //service调dao层： 组合Dao
    @Autowired
    private MemberMapper memberMapper;
    public void setMemberMapper(MemberMapper memberMapper){
        this.memberMapper=memberMapper;
    }

    public int addMember(Member member) {
        return memberMapper.addMember(member);
    }

    public int deleteMemberById(int memberId) {
        return memberMapper.deleteMemberById(memberId);
    }

    public int updateMember(Member member) {
        return memberMapper.updateMember(member);
    }

    public Member queryMemberById(int memberId) {
        return memberMapper.queryMemberById(memberId);
    }

    public List<Member> queryAllMember() {
        return memberMapper.queryAllMember();
    }

    public Member queryMemberByName(String MemberName) {
        return memberMapper.queryMemberByName(MemberName);
    }
}
