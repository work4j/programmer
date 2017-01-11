package com.programer.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.github.pagehelper.Page;
import com.programer.pojo.User;

public interface UserDao {
    int delete(Integer id);

    User get(Integer id);

    int update(User user);

    void add(User user);

    User getUserByUsernameAndPassword(@Param("username") String username,@Param("password") String password);

    List<User> find();
}