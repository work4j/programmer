package com.programer.pojo;

import lombok.Data;

@Data
public class User {
    private String id;
    private String userName;
    private String password;
    private Integer age;
    private Integer userType;
}