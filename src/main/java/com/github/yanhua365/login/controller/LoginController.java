package com.github.yanhua365.login.controller;

import com.github.yanhua365.sample.domain.Person;
import com.github.yanhua365.sample.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 简单的Controller示例，访问：http://localhost:8080/qstartweb/welcome/hello 查看结果
 */

@Controller
public class LoginController {

    @RequestMapping("/")
    public String index(ModelMap modelMap){
        return "login/index";
    }

    @RequestMapping("/login")
    public String login(ModelMap modelMap){
        return "login/login";
    }

}
