package com.programer.pojo;

import java.util.Date;
import lombok.Data;

@Data
public class User {
    private String id;
    private String userName;
    private String password;
    private String email;
    private Integer userType;
    private String nickname;
    private String realName;
    private Date registerTime;
    private Integer editable;
    private Integer articleNum;
}