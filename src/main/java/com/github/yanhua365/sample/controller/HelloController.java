package com.github.yanhua365.sample.controller;

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
@RequestMapping("/welcome")
public class HelloController {

    private PersonService personService;

    @Autowired
    public HelloController(PersonService personService){
        this.personService = personService;
    }

    @RequestMapping("/hello")
    public String hello(ModelMap modelMap){
        Person p = new Person();
        p.setFirstName("tom");
        personService.add(p);

        int i = 0;
        for(Object x : personService.list()){
            Person o = (Person) x;
            System.out.println("person is : "+o.getId() +","+o.getFirstName());
            i++;
        }

        modelMap.addAttribute("name","yanhua365. counts issss : " + i);
        return "sample/hello";
    }

}
