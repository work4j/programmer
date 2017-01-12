package com.programer.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.programer.pojo.User;
import com.programer.pojo.form.UserForm;
import com.programer.pojo.query.UserQuery;

public interface UserDao {
    int delete(String id);

    User get(String id);

    int update(UserForm form);

    void add(UserForm form);

    User getUserByUsernameAndPassword(@Param("username") String username, @Param("password") String password);

    List<User> find(UserQuery query);

    User getUser(UserQuery query);
}