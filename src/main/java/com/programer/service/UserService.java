package com.programer.service;

import java.util.List;
import com.github.pagehelper.Page;
import com.programer.pojo.User;
import com.programer.pojo.form.UserForm;
import com.programer.pojo.query.UserQuery;

public interface UserService {
    /**
     * 新增一个user
     */
    public void add(UserForm form);

    /**
     * 通过username,password登录得到一个user
     */
    public User login(String username, String password);

    /**
     * 通过id得到一个user
     */
    public User getUserById(String userId);

    /**
     * 通过id删除一个user
     */
    public int delete(String userId);

    /**
     * 分页查询User
     */
    public Page<User> findByPage(UserQuery query);

    List<User> findAll(UserQuery query);
}
