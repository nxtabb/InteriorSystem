package com.hrbeu.Interior.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @GetMapping("/aboutus")
    public String aboutUs(){
        return "aboutus";
    }
}
