package com.hrbeu.Interior.service.Impl;

import com.hrbeu.Interior.dao.SecondCaseDao;
import com.hrbeu.Interior.pojo.SecondCase;
import com.hrbeu.Interior.service.SecondCaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SecondCaseServiceImpl implements SecondCaseService {
    @Autowired
    private SecondCaseDao secondCaseDao;
    @Override
    public List<SecondCase> querySecondCaseByIdAndPage(Integer firstCaseId, Integer pageIndex, Integer pageSize) {
        Integer leftLimit = pageSize*(pageIndex-1);
        Integer rightLimit = pageSize*(pageIndex);
        return secondCaseDao.querySecondCaseByIdAndPage(leftLimit,rightLimit,firstCaseId);
    }

    @Override
    public Integer querySecondCaseCountById(Integer firstCaseId) {
        return secondCaseDao.querySecondCaseCountById(firstCaseId);
    }

    @Override
    public SecondCase queryById(Integer secondCaseId) {
        return secondCaseDao.queryById(secondCaseId);
    }
}
