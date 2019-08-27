package com.cqssc.ncp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class initController {

    @RequestMapping(value = {"/","/login"})
    public String goLogin(){
        return "login";
    }
}
