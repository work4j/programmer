package com.programer.controller.fore;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.programer.common.SystemHelper;
import com.programer.pojo.User;
import com.programer.pojo.form.UserForm;
import com.programer.pojo.query.ArticleQuery;
import com.programer.pojo.query.UserQuery;
import com.programer.service.ArticleService;
import com.programer.service.UserService;

@Controller
public class IndexController {
    @Resource
    private UserService userService;
    @Resource
    private ArticleService articleService;

    @RequestMapping("/index")
    public String toIndex() {
        return "redirect:/fore/article/articleList";
    }

    @RequestMapping("/login")
    public String toLogin() {
        return "login/login";
    }

    @RequestMapping("/register")
    public String toRegister() {
        return "login/register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView register(UserForm form) {
        ModelAndView mav = new ModelAndView("login/login");
        userService.add(form);
        mav.addObject("msg", "注册成功");
        return mav;
    }
    
    @RequestMapping(value = "/checkUserName", method = RequestMethod.POST)
    @ResponseBody
    public boolean checkUsername(String username) {
        UserQuery query = new UserQuery();
        query.setUserName(username);
        return userService.findAll(query).size() > 0;
    }

    @RequestMapping("/logout")
    public String toLogout() {
        SystemHelper.getSession().removeAttribute("currentUser");
        return "redirect:/fore/article/articleList";
    }

    @RequestMapping("/noPermission")
    public String noPermission() {
        return "noPermission";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView login(String userName, String password) {
        ModelAndView mav = new ModelAndView("login/login");
        User user = userService.login(userName, password);
        if (user != null) {
            SystemHelper.setCurrentUser(user);
            mav.setViewName("redirect:index");
        } else {
            mav.addObject("msg", "密码错误");
        }
        return mav;
    }
}
