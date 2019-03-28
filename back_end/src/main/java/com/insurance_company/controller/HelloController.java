package com.insurance_company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.Map;

@Controller
public class HelloController{
    @ResponseBody
    @RequestMapping("/hello")
    public  String hello(){
        return "Hello";
    }
    @RequestMapping({"/","/index.html"})
    public String index(){
        return "index";
    }
}

