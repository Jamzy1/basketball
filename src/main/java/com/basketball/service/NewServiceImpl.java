package com.basketball.service;

import com.basketball.dao.NewMapper;
import com.basketball.pojo.New;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewServiceImpl implements NewService {

    @Autowired
    private NewMapper newMapper;

    public void setNewMapper(NewMapper newMapper) {
        this.newMapper = newMapper;
    }

    public int addNew(New news) {
        return newMapper.addNew(news);
    }

    public int deleteNewById(int newId) {
        return newMapper.deleteNewById(newId);
    }

    public int updateNew(New news) {
        return newMapper.updateNew(news);
    }

    public New queryNewById(int newId) {
        return newMapper.queryNewById(newId);
    }

    public List<New> queryAllNew() {
        return newMapper.queryAllNew();
    }
}
