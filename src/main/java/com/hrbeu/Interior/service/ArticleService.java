package com.hrbeu.Interior.service;

import com.hrbeu.Interior.pojo.Article;

import java.util.List;
import java.util.Map;

public interface ArticleService {
    List<Article> queryArticle(Integer pageIndex, Integer pageCount, Integer category);
    Article querySelectedArticle(Integer articleId);
    Integer queryAllArticleCount();
    Map<String,Article> queryUpAndDown(Integer articleId);
}
