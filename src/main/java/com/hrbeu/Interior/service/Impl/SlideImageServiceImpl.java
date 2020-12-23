package com.hrbeu.Interior.service.Impl;

import com.hrbeu.Interior.dao.SlideImageDao;
import com.hrbeu.Interior.pojo.SlideImage;
import com.hrbeu.Interior.service.SlideImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SlideImageServiceImpl implements SlideImageService {
    @Autowired
    private SlideImageDao slideImageDao;
    @Override
    public List<SlideImage> queryAll() {
        return slideImageDao.queryAll();
    }
}
