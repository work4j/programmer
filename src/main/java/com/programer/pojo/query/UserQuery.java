package com.programer.pojo.query;

import lombok.Data;

@Data
public class UserQuery {
    private String id;
    private String userName;
    private String password;
    private Integer age;
    private Integer userType;
}