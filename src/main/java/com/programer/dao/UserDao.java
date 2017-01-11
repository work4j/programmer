package com.programer.dao;

import org.apache.ibatis.annotations.Param;
import com.programer.pojo.User;

public interface UserDao {
    int delete(Integer id);

    User get(Integer id);

    int update(User user);

    void add(User user);

    User getUserByUsernameAndPassword(@Param("username") String username,@Param("password") String password);
}