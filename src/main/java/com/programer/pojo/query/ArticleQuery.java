package com.programer.pojo.query;

import java.util.Date;
import lombok.Data;

@Data
public class ArticleQuery {
    private String id;
    private String title;
    private String content;
    private String userId;
    private Date releaseTime;
    private Integer pageNum = 1;
    private Integer limit = 20;
    private String simpleQueryParam;
}