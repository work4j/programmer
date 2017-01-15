package com.programer.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.programer.dao.ReplyDao;
import com.programer.pojo.Reply;
import com.programer.pojo.form.ReplyForm;
import com.programer.pojo.query.ReplyQuery;
import com.programer.service.ReplyService;

@Service("replyService")
public class ReplyServiceImpl implements ReplyService {
    @Resource
    private ReplyDao replyDao;

    /**
     * 新增一个Reply
     */
    public void add(ReplyForm form) {
        this.replyDao.add(form);
    }
    
    @Override
    public List<Reply> findAll(ReplyQuery query) {
        return replyDao.find(query);
    }

    @Override
    public Page<Reply> findByPage(ReplyQuery query) {
        PageHelper.startPage(query.getPage(), query.getLimit());
        return (Page<Reply>) replyDao.find(query);
    }

    @Override
    public Reply getReplyById(String userId) {
        return replyDao.get(userId);
    }

    @Override
    public int delete(String id) {
        return replyDao.delete(id);
    }

}