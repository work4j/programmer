package com.programer.pojo.form;

import java.util.Date;
import java.util.UUID;
import lombok.Data;

@Data
public class ArticleForm {
    private String id = UUID.randomUUID().toString().replaceAll("-", "");
    private String title;
    private String content;
    private String userId;
    private Date releaseTime = new Date();
    private Integer seeNum = 0;
}