package com.programer.pojo.form;

import java.util.Date;
import java.util.UUID;
import lombok.Data;

@Data
public class ReplyForm {
    private String id = UUID.randomUUID().toString().replaceAll("-", "");
    private String content;
    private String userId;
    private String articleId;
    private Date replyTime = new Date();
}