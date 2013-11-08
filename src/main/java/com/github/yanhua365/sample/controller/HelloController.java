package com.github.yanhua365.sample.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 简单的Controller示例，访问：http://localhost:8080/qstartweb/welcome/hello.html 查看结果
 */

@Controller
@RequestMapping("/welcome")
public class HelloController {

    @RequestMapping("/hello.html")
    public String hello(ModelMap modelMap){
        modelMap.addAttribute("name","yanhua365");
        return "sample/hello";
    }

}
