package com.programer.dao;

import java.util.List;
import com.programer.pojo.Article;
import com.programer.pojo.form.ArticleForm;
import com.programer.pojo.query.ArticleQuery;

public interface ArticleDao {
    int delete(String id);

    Article get(String id);

    int update(ArticleForm form);

    void add(ArticleForm form);

    List<Article> find(ArticleQuery query);

    Article getArticle(ArticleQuery query);

    void updateSeeNum(String id);
}