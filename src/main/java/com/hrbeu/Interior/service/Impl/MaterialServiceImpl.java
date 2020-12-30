package com.hrbeu.Interior.service.Impl;

import com.hrbeu.Interior.dao.MaterialDao;
import com.hrbeu.Interior.pojo.Material;
import com.hrbeu.Interior.service.MaterialService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaterialServiceImpl implements MaterialService {
    @Autowired
    private MaterialDao materialDao;
    @Override
    public List<Material> queryBySecondCaseId(Integer secondCaseId) {
        return materialDao.queryBySecondCaseId(secondCaseId);
    }
}
