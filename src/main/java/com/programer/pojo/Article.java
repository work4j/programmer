package com.programer.pojo;

import java.util.Date;
import lombok.Data;

@Data
public class Article {
    private String id;
    private String title;
    private String content;
    private String htmlContent;
    private String userId;
    private String nickname;
    private Date releaseTime;
    private Integer replyNum;
    private Integer seeNum;
}