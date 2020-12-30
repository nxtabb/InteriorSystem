package com.hrbeu.Interior.service;

import com.hrbeu.Interior.pojo.Material;

import java.util.List;

public interface MaterialService {
    List<Material> queryBySecondCaseId(Integer secondCaseId);
}
