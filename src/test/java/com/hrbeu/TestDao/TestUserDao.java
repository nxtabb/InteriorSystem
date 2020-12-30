package com.hrbeu.TestDao;

import com.hrbeu.BaseTest;
import com.hrbeu.Interior.dao.ArticleDao;
import com.hrbeu.Interior.dao.FirstCaseDao;
import com.hrbeu.Interior.dao.MaterialDao;
import com.hrbeu.Interior.dao.StandardDao;
import com.hrbeu.Interior.dao.admin.UserDao;
import com.hrbeu.Interior.pojo.Article;
import com.hrbeu.Interior.pojo.FirstCase;
import com.hrbeu.Interior.pojo.Standard;
import com.hrbeu.Interior.service.admin.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class TestUserDao extends BaseTest {
    @Autowired
    private UserService userService;
    @Autowired
    private ArticleDao articleDao;
    @Autowired
    private FirstCaseDao firstCaseDao;
    @Autowired
    private MaterialDao materialDao;
    @Autowired
    private StandardDao standardDao;
    @Test
    public void test01(){
        List<Standard> standards = standardDao.queryByCondition(110,1,10,1);
        System.out.println(standards);
    }
}
