package com.hrbeu.Interior.dao;

import com.hrbeu.Interior.pojo.Article;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleDao {
    List<Article> queryArticle(@Param("leftLimit") int leftLimit, @Param("rightLimit") int rightLimit,@Param("category") Integer category);
    Article querySelectedArticle(Integer articleId);
    Integer queryAllArticle();
}
