package com.hrbeu.Interior.dao;

import com.hrbeu.Interior.pojo.Material;

import java.util.List;

public interface MaterialDao {
    List<Material> queryBySecondCaseId(Integer secondCaseId);
}
