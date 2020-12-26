package com.hrbeu.Interior.service.Impl;

import com.hrbeu.Interior.dao.ArticleDao;
import com.hrbeu.Interior.pojo.Article;
import com.hrbeu.Interior.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleDao articleDao;
    @Override
    public List<Article> queryArticle(Integer pageIndex, Integer pageCount, Integer category) {
        int leftLimit = pageCount*(pageIndex-1);
        int rightLimit = pageCount*pageIndex;
        return articleDao.queryArticle(leftLimit,rightLimit,category);
    }

    @Override
    public Article querySelectedArticle(Integer articleId) {
        return articleDao.querySelectedArticle(articleId);
    }

    @Override
    public Integer queryAllArticleCount() {
        return articleDao.queryAllArticle();
    }
}
