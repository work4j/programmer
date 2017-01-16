package com.programer.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.programer.dao.UserDao;
import com.programer.pojo.User;
import com.programer.pojo.form.UserForm;
import com.programer.pojo.query.UserQuery;
import com.programer.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    /**
     * 新增一个user
     */
    public void add(UserForm form) {
        this.userDao.add(form);
    }

    /**
     * 通过username,password得到一个user
     */
    public User login(String username, String password) {
        return userDao.getUserByUsernameAndPassword(username, password);
    }
    
    @Override
    public List<User> findAll(UserQuery query) {
        return userDao.find(query);
    }

    @Override
    public Page<User> findByPage(UserQuery query) {
        PageHelper.startPage(query.getPage(), query.getLimit());
        return (Page<User>) userDao.find(query);
    }

    @Override
    public User getUserById(String userId) {
        return userDao.get(userId);
    }

    @Override
    public int delete(String id) {
        return userDao.delete(id);
    }

    @Override
    public List<User> findArticleTop12() {
        UserQuery query = new UserQuery();
        PageHelper.startPage(1, 12);
        query.setOrderType("articleTop");
        return userDao.find(query);
    }

}