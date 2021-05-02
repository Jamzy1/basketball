package com.basketball.service;

import com.basketball.dao.SuppMapper;
import com.basketball.pojo.Supp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SuppServiceImpl implements SuppService {

    @Autowired
    private SuppMapper suppMapper;

    public void setSuppMapper(SuppMapper suppMapper) {
        this.suppMapper = suppMapper;
    }

    public int addSupp(Supp supp) {
        return suppMapper.addSupp(supp);
    }

    public int deleteSuppById(int SuppId) {
        return suppMapper.deleteSuppById(SuppId);
    }

    public int updateSupp(Supp supp) {
        return suppMapper.updateSupp(supp);
    }

    public Supp querySuppById(int SuppId) {
        return suppMapper.querySuppById(SuppId);
    }

    public List<Supp> queryAllSupp() {
        return suppMapper.queryAllSupp();
    }
}
