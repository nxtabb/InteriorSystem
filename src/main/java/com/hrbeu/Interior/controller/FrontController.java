package com.hrbeu.Interior.controller;

import com.hrbeu.Interior.pojo.About;
import com.hrbeu.Interior.pojo.Article;
import com.hrbeu.Interior.pojo.SlideImage;
import com.hrbeu.Interior.service.AboutService;
import com.hrbeu.Interior.service.ArticleService;
import com.hrbeu.Interior.service.SlideImageService;
import com.hrbeu.Interior.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
public class FrontController {
    @Autowired
    private SlideImageService slideImageService;
    @Autowired
    private AboutService aboutService;
    @Autowired
    private ArticleService articleService;
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
        About about = aboutService.queryFirst();
        model.addAttribute("about",about);
        //查询文章
        List<Article> articles = articleService.queryArticle(1,7,1);
        List<Article> news = articleService.queryArticle(1,1,0);
        model.addAttribute("articles",articles);
        //查询新闻
        model.addAttribute("news",news);

        //查询10个档案
        return "index";
    }
    @GetMapping("/aboutus")
    public String aboutUs(Model model){
        About about = aboutService.queryFirst();
        model.addAttribute("about",about);
        return "aboutus";
    }


    @GetMapping("/article/{articleId}")
    public String article(@PathVariable("articleId")Integer articleId,Model model){
        Article article = articleService.querySelectedArticle(articleId);
        model.addAttribute("article",article);
        Map<String,Article> articleUpAndDown = articleService.queryUpAndDown(articleId);
        Article articleDown = (Article)articleUpAndDown.get("articleUp");
        if(articleDown!=null){
            Integer articleDownId = articleDown.getArticleId();
        }
        else {
            Integer articleDownId = null;
        }


        return "article";
    }

    @GetMapping("/articlelist/{pageIndex}")
    public String articleList(@PathVariable("pageIndex")Integer pageIndex,Model model){
        List<Article> articles = articleService.queryArticle(pageIndex,12,1);
        int articleCount = articleService.queryAllArticleCount();
        Map<String,Integer> pageInfo = PageUtil.page(pageIndex,12,articleCount);
        model.addAttribute("articles",articles);
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("pageIndex",pageIndex);
        return "articleList";
    }
}
