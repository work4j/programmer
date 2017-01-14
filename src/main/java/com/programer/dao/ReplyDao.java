package com.programer.dao;

import java.util.List;
import com.programer.pojo.Reply;
import com.programer.pojo.form.ReplyForm;
import com.programer.pojo.query.ReplyQuery;

public interface ReplyDao {
    int delete(String id);

    Reply get(String id);

    int update(ReplyForm form);

    void add(ReplyForm form);

    List<Reply> find(ReplyQuery query);

    Reply getReply(ReplyQuery query);
}