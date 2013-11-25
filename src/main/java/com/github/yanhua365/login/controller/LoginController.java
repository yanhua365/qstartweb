package com.github.yanhua365.login.controller;

import com.github.yanhua365.sample.domain.Person;
import com.github.yanhua365.sample.service.PersonService;
import org.apache.commons.logging.LogFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 简单的Controller示例，访问：http://localhost:8080/qstartweb/welcome/hello 查看结果
 */

@Controller
public class LoginController {

    protected Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping("/")
    public String index(ModelMap modelMap){
        //下面的logger仅仅是测试slf4j和log4j的配置
        logger.info("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");
        logger.debug("begin request {},the view tpl is {}","/","login/index");
        return "login/index";
    }

    @RequestMapping("/login")
    public String login(ModelMap modelMap){
        return "login/login";
    }

}
