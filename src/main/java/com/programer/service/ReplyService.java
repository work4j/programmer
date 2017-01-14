package com.programer.service;

import java.util.List;
import com.github.pagehelper.Page;
import com.programer.pojo.Reply;
import com.programer.pojo.form.ReplyForm;
import com.programer.pojo.query.ReplyQuery;

public interface ReplyService {
    /**
     * 新增一个Reply
     */
    public void add(ReplyForm form);

    /**
     * 通过id得到一个Reply
     */
    public Reply getReplyById(String id);

    /**
     * 通过id删除一个Reply
     */
    public int delete(String id);

    /**
     * 分页查询Reply
     */
    public Page<Reply> findByPage(ReplyQuery query);

    List<Reply> findAll(ReplyQuery query);
}
