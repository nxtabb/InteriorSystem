package com.hrbeu.Interior.controller;

import com.hrbeu.Interior.pojo.About;
import com.hrbeu.Interior.pojo.SlideImage;
import com.hrbeu.Interior.service.AboutService;
import com.hrbeu.Interior.service.SlideImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class FrontController {
    @Autowired
    private SlideImageService slideImageService;
    @Autowired
    private AboutService aboutService;
    @GetMapping("/index")
    public String index(Model model){
        //查询滑动图片
        List<SlideImage> slideImages = slideImageService.queryAll();
        SlideImage slideImage = slideImages.get(0);
        SlideImage slideImage1 = slideImages.get(1);
        SlideImage slideImage2 = slideImages.get(2);
        List<SlideImage> slideImages1 = new ArrayList<>();
        slideImages1.add(slideImage1);
        slideImages1.add(slideImage2);
        model.addAttribute("slideImage",slideImage);
        model.addAttribute("slideImages1",slideImages1);
        //查询所有的about
        //查询文章
        //查询新闻
        //查询10个档案
        return "index";
    }
    @GetMapping("/aboutus")
    public String aboutUs(Model model){
        About about = aboutService.queryFirst();
        model.addAttribute("about",about);
        return "aboutus";
    }
}
