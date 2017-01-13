package com.programer.controller.fore;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.programer.common.SystemHelper;
import com.programer.pojo.form.ArticleForm;
import com.programer.pojo.query.ArticleQuery;
import com.programer.pojo.query.UserQuery;
import com.programer.service.ArticleService;
import com.programer.service.UserService;

@Controller
@RequestMapping("/article")
public class ArticleController {
    @Resource
    private ArticleService articleService;

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
    public ModelAndView detail(@PathVariable String id) {
        ModelAndView mav = new ModelAndView("article/detail");
        mav.addObject("result", articleService.getArticleById(id));
        return mav;
    }
}
