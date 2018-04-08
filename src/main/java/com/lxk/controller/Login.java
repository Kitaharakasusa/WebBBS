package com.lxk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Login {
    @RequestMapping("/Login")
    public ModelAndView login()
    {
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("Login");
        return modelAndView;
    }
}
