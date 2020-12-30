package com.hrbeu.Interior.controller;

import com.hrbeu.Interior.pojo.*;
import com.hrbeu.Interior.pojo.Super.FirstCaseSup;
import com.hrbeu.Interior.pojo.Super.SecondCaseSup;
import com.hrbeu.Interior.service.*;
import com.hrbeu.Interior.utils.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.io.File;
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
    @Autowired
    private IndexImageService indexImageService;
    @Autowired
    private FirstCaseService firstCaseService;
    @Autowired
    private SecondCaseService secondCaseService;
    @Autowired
    private MaterialService materialService;
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
        //查询8个案例
        List<IndexImage> indexImageList = indexImageService.queryIndexImages();
        model.addAttribute("indexImageList",indexImageList);
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
        Article articleDown = articleUpAndDown.get("articleUp");
        Article articleUp = articleUpAndDown.get("articleDown");
        Integer articleDownId = null;
        if(articleDown!=null){
            articleDownId = articleDown.getArticleId();
        }else {
            articleDownId = articleId;
        }
        model.addAttribute("articleDownId",articleDownId);
        Integer articleUpId = null;
        if(articleUp!=null){
            articleUpId = articleUp.getArticleId();
        }
        else {
            articleUpId = articleId;
        }
        model.addAttribute("articleUpId",articleUpId);
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
    @GetMapping("/firstCase/{pageIndex}")
    public String firstCase(@PathVariable("pageIndex")Integer pageIndex,Model model){
        int pageCount = firstCaseService.queryAllCount();
        Integer pageSize = 6;
        Map<String,Integer> pageInfo = PageUtil.page(pageIndex,pageSize,pageCount);
        List<FirstCase> firstCaseList = firstCaseService.queryByPage(pageIndex,pageSize);
        List<FirstCaseSup> firstCaseSupList = new ArrayList<>();
        for(FirstCase firstCase:firstCaseList){
            FirstCaseSup firstCaseSup = new FirstCaseSup();
            String path = firstCase.getFirstCaseName().substring(0,firstCase.getFirstCaseName().length()-1)+ File.separator+firstCase.getFirstCaseName()+File.separator+firstCase.getFirstCaseImage();
            firstCaseSup.setFirstCase(firstCase);
            firstCaseSup.setImagePath(path);
            firstCaseSupList.add(firstCaseSup);
        }
        model.addAttribute("firstCaseSupList",firstCaseSupList);
        model.addAttribute("pageInfo",pageInfo);

        return "firstcase";
    }

    @GetMapping("/firstCase/{firstCaseName}/{pageIndex}")
    public String indexToFirstCase(@PathVariable("firstCaseName")String firstCaseName,@PathVariable("pageIndex")Integer pageIndex,Model model){
        Integer pageSize = 6;
        String name = null;
        switch (firstCaseName){
            case "北欧风":
                name = "beiou";
                break;
            case "美式风":
                name = "meishi";
                break;
            case "欧式风":
                name = "oushi";
                break;
            case "现代轻奢风":
                name = "qingshe";
                break;
            case "现代风":
                name = "xiandai";
                break;
            case "新中式风":
                name = "xinzhongshi";
                break;
            case "中式风":
                name = "zhongshi";
                break;
        }
        List<FirstCase> firstCaseList = firstCaseService.queryByPageAndName(pageIndex,pageSize,name);
        Integer caseCount = firstCaseService.queryCountByName(name);
        Map<String,Integer> pageInfo = PageUtil.page(pageIndex,pageSize,caseCount);
        List<FirstCaseSup> firstCaseSupList = new ArrayList<>();
        for(FirstCase firstCase:firstCaseList){
            FirstCaseSup firstCaseSup = new FirstCaseSup();
            String path = firstCase.getFirstCaseName().substring(0,firstCase.getFirstCaseName().length()-1)+ File.separator+firstCase.getFirstCaseName()+File.separator+firstCase.getFirstCaseImage();
            firstCaseSup.setFirstCase(firstCase);
            firstCaseSup.setImagePath(path);
            firstCaseSupList.add(firstCaseSup);
        }
        model.addAttribute("pageInfo",pageInfo);
        model.addAttribute("firstCaseSupList",firstCaseSupList);
        model.addAttribute("name",firstCaseName);
        return "firstcasebyname";
    }

    @GetMapping("/secondcase/{firstCaseId}/{pageIndex}")
    public String secondCase(@PathVariable("firstCaseId")Integer firstCaseId,@PathVariable("pageIndex")Integer pageIndex,Model model){
        Integer pageSize = 12;
        FirstCase firstCase = firstCaseService.queryFirstCaseById(firstCaseId);
        model.addAttribute("description",firstCase.getDescription());
        List<SecondCase> secondCaseList = secondCaseService.querySecondCaseByIdAndPage(firstCaseId,pageIndex,pageSize);
        Integer secondCaseCount = secondCaseService.querySecondCaseCountById(firstCaseId);
        Map<String,Integer> pageInfo = PageUtil.page(pageIndex,pageSize,secondCaseCount);
        List<SecondCaseSup> secondCaseSupList = new ArrayList<>();
        for(SecondCase secondCase:secondCaseList){
            SecondCaseSup secondCaseSup = new SecondCaseSup();
            String path = firstCase.getFirstCaseName().substring(0,firstCase.getFirstCaseName().length()-1)+ File.separator+firstCase.getFirstCaseName()+File.separator+secondCase.getSecondCaseImage();
            secondCaseSup.setPath(path);
            secondCaseSup.setSecondCase(secondCase);
            secondCaseSupList.add(secondCaseSup);
        }
        model.addAttribute("secondCaseSupList",secondCaseSupList);
        model.addAttribute("pageInfo",pageInfo);
        return "secondcase";

    }

    @GetMapping("/materials/{secondCaseId}")
    public String materials(@PathVariable("secondCaseId")Integer secondCaseId,Model model){
        SecondCase secondCase = secondCaseService.queryById(secondCaseId);
        List<Material> materialList = materialService.queryBySecondCaseId(secondCaseId);
        if(materialList.size()!=0){
            model.addAttribute("materialList",materialList);
            model.addAttribute("secondCase",secondCase);
            return "material";
        }
        else {
            return "redirect:/index";
        }

    }


}
