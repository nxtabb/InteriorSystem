package com.hrbeu.TestDao;

import com.hrbeu.BaseTest;
import com.hrbeu.Interior.dao.ArticleDao;
import com.hrbeu.Interior.dao.admin.UserDao;
import com.hrbeu.Interior.pojo.Article;
import com.hrbeu.Interior.service.admin.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class TestUserDao extends BaseTest {
    @Autowired
    private UserService userService;
    @Autowired
    private ArticleDao articleDao;
    @Test
    public void test01(){
        Article article = articleDao.querySelectedArticle(1);
        System.out.println(article);
    }
}
