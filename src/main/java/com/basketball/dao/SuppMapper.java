package com.basketball.dao;

import com.basketball.pojo.Supp;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SuppMapper {

    int addSupp(Supp supp);


    int deleteSuppById(@Param("suppId") int SuppId);


    int updateSupp(Supp supp);


    Supp querySuppById(@Param("suppId")int SuppId);


    List<Supp> queryAllSupp();

}
