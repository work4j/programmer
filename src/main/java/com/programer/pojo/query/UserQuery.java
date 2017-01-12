package com.programer.pojo.query;

import java.util.Date;
import lombok.Data;

@Data
public class UserQuery {
    private String id;
    private String userName;
    private String password;
    private String email;
    private Integer userType;
    private String nickname;
    private String realName;
    private Date registerTime;
    private Integer editable;
}