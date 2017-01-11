package com.programer.service;

import com.github.pagehelper.Page;
import com.programer.pojo.User;

public interface UserService {
    /**
     * 新增一个user
     */
    public void add(User user);

    /**
     * 通过username,password登录得到一个user
     */
    public User login(String username, String password);

    /**
     * 通过id得到一个user
     */
    public User getUserById(int userId);

    public Page<User> find();
}
