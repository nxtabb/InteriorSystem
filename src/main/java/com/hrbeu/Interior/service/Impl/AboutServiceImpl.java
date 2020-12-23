package com.hrbeu.Interior.service.Impl;

import com.hrbeu.Interior.dao.AboutDao;
import com.hrbeu.Interior.pojo.About;
import com.hrbeu.Interior.service.AboutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AboutServiceImpl implements AboutService {
    @Autowired
    private AboutDao aboutDao;
    @Override
    public About queryFirst() {
        return aboutDao.queryFirst();
    }
}
