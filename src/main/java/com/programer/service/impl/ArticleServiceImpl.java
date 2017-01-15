package com.programer.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.programer.dao.ArticleDao;
import com.programer.pojo.Article;
import com.programer.pojo.form.ArticleForm;
import com.programer.pojo.query.ArticleQuery;
import com.programer.service.ArticleService;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {
    @Resource
    private ArticleDao articleDao;

    /**
     * 新增一个Article
     */
    public void add(ArticleForm form) {
        this.articleDao.add(form);
    }
    
    @Override
    public List<Article> findAll(ArticleQuery query) {
        return articleDao.find(query);
    }

    @Override
    public Page<Article> findByPage(ArticleQuery query) {
        PageHelper.startPage(query.getPage(), query.getLimit());
        return (Page<Article>) articleDao.find(query);
    }

    @Override
    public Article getArticleById(String userId) {
        return articleDao.get(userId);
    }

    @Override
    public int delete(String id) {
        return articleDao.delete(id);
    }

}