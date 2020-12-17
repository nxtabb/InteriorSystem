package com.hrbeu.TestDao;

import com.hrbeu.BaseTest;
import com.hrbeu.Interior.dao.admin.UserDao;
import com.hrbeu.Interior.service.admin.UserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class TestUserDao extends BaseTest {
    @Autowired
    private UserService userService;
    @Test
    public void test01(){
        int a = userService.userCounts("aaa");
        System.out.println(a);
    }
}
