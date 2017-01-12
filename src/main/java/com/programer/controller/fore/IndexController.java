package com.programer.controller.fore;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.programer.service.UserService;

@Controller
public class IndexController {
    @Resource
    private UserService userService;

    @RequestMapping("/index")
    public String toIndex() {
        return "index";
    }

    @RequestMapping("/login")
    public String toLogin() {
        return "login/login";
    }

    @RequestMapping("/noPermission")
    public String noPermission() {
        return "noPermission";
    }
}
