package com.programer.pojo;

import java.util.Date;
import lombok.Data;

@Data
public class User {
    private String id;
    private String userName;
    private String password;
    private Integer age;
    private Integer userType;
    private String nickName;
    private String realname;
    private Date registerTime;
}