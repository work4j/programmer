package com.programer.pojo.form;

import java.util.Date;
import java.util.UUID;
import lombok.Data;

@Data
public class UserForm {
    private String id = UUID.randomUUID().toString().replaceAll("-", "");
    private String userName;
    private String password;
    private Integer age;
    private Integer userType;
    private String nickName;
    private String realname;
    private Date registerTime = new Date();
}