package com.programer.pojo;

import java.util.Date;
import lombok.Data;

@Data
public class Reply {
    private String id;
    private String content;
    private String userId;
    private String nickname;
    private String articleId;
    private Date replyTime;
}