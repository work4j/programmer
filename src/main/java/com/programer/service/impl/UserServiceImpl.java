package com.programer.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.programer.dao.UserDao;
import com.programer.pojo.User;
import com.programer.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
    @Resource
    private UserDao userDao;

    public User getUserById(int userId) {
        return this.userDao.get(userId);
    }

    /**
     * 新增一个user
     */
    public void add(User user) {
        this.userDao.add(user);
    }

    /**
     * 通过username,password得到一个user
     */
    public User login(String username, String password) {
        return this.userDao.getUserByUsernameAndPassword(username, password);
    }

    @Override
    public Page<User> find() {
        PageHelper.startPage(1, 10);
        return (Page<User>) this.userDao.find();
    }

}