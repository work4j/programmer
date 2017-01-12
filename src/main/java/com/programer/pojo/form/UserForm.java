package com.programer.pojo.form;

import java.util.Date;
import java.util.UUID;
import lombok.Data;

@Data
public class UserForm {
    private String id = UUID.randomUUID().toString().replaceAll("-", "");
    private String userName;
    private String password;
    private String email;
    private Integer userType;
    private String nickname;
    private String realName;
    private Date registerTime = new Date();
    private Integer editable = 1;
}