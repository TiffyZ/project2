package com.insurance_company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@ResponseBody
@Controller
public class HelloController {
    @RequestMapping
    public String hello(){
        return "hello world";
    }
}
