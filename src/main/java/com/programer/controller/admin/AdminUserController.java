package com.programer.controller.admin;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.programer.pojo.form.UserForm;
import com.programer.pojo.query.UserQuery;
import com.programer.service.UserService;

@Controller
@RequestMapping("/user")
public class AdminUserController {
    @Resource
    private UserService userService;

    @RequestMapping(value = "/showUserList", method = RequestMethod.GET)
    public ModelAndView testPage(UserQuery query) {
        ModelAndView mav = new ModelAndView("modules/user/list");
        mav.addObject("result", userService.findByPage(query));
        return mav;
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addPage() {
        return "modules/user/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(UserForm form) {
        userService.add(form);
        return "redirect:showUserList";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.GET)
    public String editPage() {
        return "modules/user/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String edit() {
        return "redirect:showUserList";
    }

    @RequestMapping(value = "/delete_{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") String id) {
        userService.delete(id);
        return "redirect:showUserList";
    }

}
