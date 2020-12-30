package com.hrbeu.Interior.controller;

import com.hrbeu.Interior.pojo.FirstCase;
import com.hrbeu.Interior.pojo.Standard;
import com.hrbeu.Interior.pojo.Super.FirstCaseSup;
import com.hrbeu.Interior.service.StandardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Controller
public class QuestionController {
    @Autowired
    private StandardService standardService;
    @GetMapping("/question")
    public String question() {
        return "question";
    }
    @PostMapping("/question")
    public String recommend(HttpServletRequest request, Model model){
        String name = request.getParameter("name");
        model.addAttribute("name",name);
        String ageStr = request.getParameter("age");
        String gradeStr = request.getParameter("grade");
        String moneyStr = request.getParameter("money");
        String petStr = request.getParameter("pet");
        List<Standard> standardList = standardService.queryByCondition(ageStr,moneyStr,gradeStr,petStr);
        List<Standard> standardResult = new ArrayList<>();

        if(standardList==null){
            List<Standard> allStandard = standardService.queryAll();
            int len = allStandard.size();
            int random = 1+(int)(Math.random()*len);
            standardResult.add(allStandard.get(random-1));
            allStandard.remove(random-1);
            len = allStandard.size();
            random = 1+(int)(Math.random()*len);
            standardResult.add(allStandard.get(random-1));
        }
        else if(standardList.size()>2){
            int len = standardList.size();
            int random = 1+(int)(Math.random()*len);
            standardResult.add(standardList.get(random-1));
            standardList.remove(random-1);
            len = standardList.size();
            random = 1+(int)(Math.random()*len);
            standardResult.add(standardList.get(random-1));
        }

        else {
            standardResult = standardList;
        }
        List<FirstCase> firstCaseList = new ArrayList<>();
        List<FirstCaseSup> firstCaseSupList = new ArrayList<>();
        for(Standard standard:standardResult){
            firstCaseList.add(standard.getFirstCase());
        }
        for(FirstCase firstCase:firstCaseList){
            FirstCaseSup firstCaseSup = new FirstCaseSup();
            String path = firstCase.getFirstCaseName().substring(0,firstCase.getFirstCaseName().length()-1)+ File.separator+firstCase.getFirstCaseName()+File.separator+firstCase.getFirstCaseImage();
            firstCaseSup.setFirstCase(firstCase);
            firstCaseSup.setImagePath(path);
            firstCaseSupList.add(firstCaseSup);

        }
        model.addAttribute("firstCaseSupList",firstCaseSupList);
        return "recommendpage";

    }
}



