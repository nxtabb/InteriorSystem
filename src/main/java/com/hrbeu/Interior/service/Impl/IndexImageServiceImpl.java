package com.hrbeu.Interior.service.Impl;

import com.hrbeu.Interior.dao.IndexImageDao;
import com.hrbeu.Interior.pojo.FirstCase;
import com.hrbeu.Interior.pojo.IndexImage;
import com.hrbeu.Interior.service.IndexImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
class IndexImageServiceImpl implements IndexImageService {
    @Autowired
    private IndexImageDao indexImageDao;
    @Override
    public List<IndexImage> queryIndexImages() {
        return indexImageDao.queryIndexImages();
    }
}
