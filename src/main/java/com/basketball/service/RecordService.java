package com.basketball.service;

import com.basketball.pojo.Record;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecordService {

    int addRecord(Record record);


    int deleteRecordById(@Param("recordId") int recordId);


    int updateRecord(Record record);


    Record queryRecordById(@Param("recordId")int recordId);


    List<Record> queryAllRecord();

}
