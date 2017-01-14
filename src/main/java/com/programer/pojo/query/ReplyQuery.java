package com.programer.pojo.query;

import java.util.Date;
import lombok.Data;

@Data
public class ReplyQuery {
    private String id;
    private String content;
    private String userId;
    private String articleId;
    private Date replyTime;
    private Integer pageNum = 1;
    private Integer limit = 20;
    private String simpleQueryParam;
}