package com.hrbeu.Interior.service.Impl;

import com.hrbeu.Interior.dao.StandardDao;
import com.hrbeu.Interior.pojo.Standard;
import com.hrbeu.Interior.service.StandardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StandardServiceImpl implements StandardService {
    @Autowired
    private StandardDao standardDao;
    @Override
    public List<Standard> queryByCondition(String ageStr, String moneyStr, String gradeStr, String petStr) {
        Integer age = Integer.parseInt(ageStr);
        Integer grade = Integer.parseInt(gradeStr);
        Integer money = Integer.parseInt(moneyStr);
        Integer pet = null;
        if(petStr!=null){
            pet = 1;
        }else {
            pet = 0;
        }
        return standardDao.queryByCondition(age,grade,money,pet);
    }

    @Override
    public List<Standard> queryAll() {
        return standardDao.queryAll();
    }
}
