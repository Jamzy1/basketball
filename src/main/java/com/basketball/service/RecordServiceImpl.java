package com.basketball.service;

import com.basketball.dao.RecordMapper;
import com.basketball.pojo.Record;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class RecordServiceImpl implements RecordService {


    @Autowired
    private RecordMapper recordMapper;

    public void setRecordMapper(RecordMapper recordMapper) {
        this.recordMapper = recordMapper;
    }

    public int addRecord(Record record) {
        return recordMapper.addRecord(record);
    }

    public int deleteRecordById(int recordId) {
        return recordMapper.deleteRecordById(recordId);
    }

    public int updateRecord(Record record) {
        return recordMapper.updateRecord(record);
    }

    public Record queryRecordById(int recordId) {
        return recordMapper.queryRecordById(recordId);
    }

    public List<Record> queryAllRecord() {
        return recordMapper.queryAllRecord();
    }
}
