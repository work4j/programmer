package com.programer.controller.fore;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.programer.common.SystemHelper;
import com.programer.pojo.form.ArticleForm;
import com.programer.pojo.form.ReplyForm;
import com.programer.pojo.query.ArticleQuery;
import com.programer.pojo.query.ReplyQuery;
import com.programer.pojo.query.UserQuery;
import com.programer.service.ArticleService;
import com.programer.service.ReplyService;
import com.programer.service.UserService;

@Controller
@RequestMapping("/article")
public class ArticleController {
    @Resource
    private ArticleService articleService;
    @Resource
    private ReplyService replyService;

    @RequestMapping(value = "/articleList", method = RequestMethod.GET)
    public ModelAndView testPage(ArticleQuery query) {
        ModelAndView mav = new ModelAndView("article/list");
        mav.addObject("result", articleService.findByPage(query));
        return mav;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPage() {
        if (SystemHelper.getCurrentUser() == null) {
            return "redirect:/fore/login";
        }
        return "article/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(ArticleForm form) {
        form.setUserId(SystemHelper.getCurrentUser().getId());
        articleService.add(form);
        return "redirect:articleList";
    }

    @RequestMapping("/detail_{id}")
    public ModelAndView detail(@PathVariable String id, ReplyQuery query) {
        ModelAndView mav = new ModelAndView("article/detail");
        mav.addObject("result", articleService.getArticleById(id));
        query.setArticleId(id);
        mav.addObject("replys", replyService.findByPage(query));
        return mav;
    }

    @RequestMapping(value = "/addReply", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> addReply(ReplyForm form) {
        Map<String, Object> map = new HashMap<String, Object>();
        if (SystemHelper.getCurrentUser() == null) {
            map.put("status", 2);
            map.put("msg", "请先登录");
            return map;
        }
        form.setUserId(SystemHelper.getCurrentUser().getId());
        replyService.add(form);
        map.put("status", 1);
        return map;
    }

}
