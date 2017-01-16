package com.programer.service;

import java.util.List;
import com.github.pagehelper.Page;
import com.programer.pojo.Article;
import com.programer.pojo.form.ArticleForm;
import com.programer.pojo.query.ArticleQuery;

public interface ArticleService {
    /**
     * 新增一个Article
     */
    public void add(ArticleForm form);

    /**
     * 通过id得到一个Article
     */
    public Article getArticleById(String id);

    /**
     * 通过id删除一个Article
     */
    public int delete(String id);
    
    /**
     * 通过id给Article增加一个查看数
     */
    public void updateSeeNum(String id);

    /**
     * 分页查询Article
     */
    public Page<Article> findByPage(ArticleQuery query);

    List<Article> findAll(ArticleQuery query);

    List<Article> findTop(ArticleQuery query);
}
