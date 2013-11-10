package com.github.yanhua365.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 简单的Controller示例，访问：http://localhost:8080/qstartweb/welcome/hello.html 查看结果
 */

@Controller
@RequestMapping("/welcome")
public class HelloRestController {

    @RequestMapping("/hello-rest")
    @ResponseBody
    public String hello(ModelMap modelMap){
        return "hello rest";
    }

}
