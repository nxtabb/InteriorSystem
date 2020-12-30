package com.hrbeu.Interior.service.Impl;

import com.hrbeu.Interior.dao.FirstCaseDao;
import com.hrbeu.Interior.pojo.FirstCase;
import com.hrbeu.Interior.service.FirstCaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FirstCaseServiceImpl implements FirstCaseService {
    @Autowired
    private FirstCaseDao firstCaseDao;

    @Override
    public Integer queryAllCount() {
        return firstCaseDao.queryAllCount();
    }

    @Override
    public List<FirstCase> queryByPage(Integer pageIndex, Integer pageSize) {
        Integer leftLimit = pageSize*(pageIndex-1);
        Integer rightLimit = pageSize*pageIndex;
        return firstCaseDao.queryByPage(leftLimit,rightLimit);
    }

    @Override
    public List<FirstCase> queryByPageAndName(Integer pageIndex, Integer pageSize, String name) {
        Integer leftLimit = pageSize*(pageIndex-1);
        Integer rightLimit = pageSize*pageIndex;
        return firstCaseDao.queryByPageAndName(leftLimit,rightLimit,name);
    }

    @Override
    public Integer queryCountByName(String name) {
        return firstCaseDao.queryCountByPageAndName(name);
    }

    @Override
    public FirstCase queryFirstCaseById(Integer firstCaseId) {
        return firstCaseDao.queryFirstCaseById(firstCaseId);
    }
}
