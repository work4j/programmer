package com.programer.controller.admin;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.programer.common.SystemHelper;
import com.programer.pojo.form.ArticleForm;
import com.programer.pojo.query.ArticleQuery;
import com.programer.service.ArticleService;

@Controller
@RequestMapping("/article")
public class AdminAtricleController {
	@Resource
	private ArticleService articleService;

	@RequestMapping(value = "/showArticleList", method = RequestMethod.GET)
	public ModelAndView testPage(ArticleQuery query) {
		query.setLimit(10);
		ModelAndView mav = new ModelAndView("modules/article/list");
		mav.addObject("result", articleService.findByPage(query));
		return mav;
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPage() {
		return "modules/article/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(ArticleForm form) {
		articleService.add(form);
		return "redirect:showArticleList";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String editPage() {
		return "modules/article/edit";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String edit() {
		return "redirect:showArticleList";
	}

	@RequestMapping(value = "/delete_{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") String id) {
		articleService.delete(id);
		HttpServletRequest request = SystemHelper.getRequest();
		String url = request.getHeader("Referer");
		return "redirect:" + url;
	}
}
