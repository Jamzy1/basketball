package com.basketball.service;

import com.basketball.pojo.New;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface NewService {

    int addNew(New news);


    int deleteNewById(@Param("newId") int newId);


    int updateNew(New news);


    New queryNewById(@Param("newId")int newId);


    List<New> queryAllNew();

}
