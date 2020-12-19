package com.hrbeu.Interior.controller.admin;

import com.hrbeu.Interior.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminPageController {
    @GetMapping("/")
    public String adminIndex(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if(user==null){
            return "redirect:/admin/login";
        }
        else {
            return "admin/index";
        }
    }
    @GetMapping("/login")
    public String login(){
        return "admin/login";
    }

    @GetMapping("/register")
    public String register(){

        return "admin/register";
    }
}
