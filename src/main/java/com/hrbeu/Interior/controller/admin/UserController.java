package com.hrbeu.Interior.controller.admin;

import com.hrbeu.Interior.service.admin.UserService;
import com.hrbeu.Interior.pojo.User;
import com.hrbeu.Interior.utils.MD5Util;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/admin")
public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public ModelAndView login(@Param("username")String username, @Param("password") String password, ModelAndView model, HttpServletRequest request){
        User user = userService.checkUser(username, password);
        if(user==null){
            model.addObject("errMsg","用户名不存在或密码错误");
            model.setViewName("admin/login");
            return model;
        }else {
            user.setPassword(null);
            HttpSession session = request.getSession();
            session.setAttribute("user",user);
        }
        model.setViewName("redirect:/admin/index");
        return model;
    }

    //登出
    @GetMapping("/logout")
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        return "redirect:/admin/login";
    }


    @RequestMapping(value = "/checkusername",method = RequestMethod.GET)
    @ResponseBody
    public Map<String,Object> checkUsername(@Param("username")String username){
        Map<String,Object> modelMap = new HashMap<>();
        int userCount  = userService.userCounts(username);
        if(userCount==0){
            modelMap.put("success",true);
        }else {
            modelMap.put("success",false);
        }
        return modelMap;
    }


    //注册
    @PostMapping(value = "/register")
    public String register(@Param("username")String username, @Param("password")String password, @Param("email")String email, @Param("nickname")String nickname, ModelAndView model, HttpServletRequest request){
        String password_input = MD5Util.md5(password);
        User user = new User();
        user.setUsername(username);
        user.setPassword(password_input);
        user.setEmail(email);
        user.setNickname(nickname);
        int effNum = userService.addUser(user);
        if(effNum<=0){
            return "redirect:/admin/register";
        }else {
            HttpSession session = request.getSession();
            user.setPassword(null);
            session.setAttribute("user",user);
            return "redirect:/admin/index";
        }

    }



}
