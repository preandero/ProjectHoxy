package com.lec.spring.user.controller;

import com.lec.spring.user.domain.ComDTO;
import com.lec.spring.user.service.ComService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ComRegController {

    @Autowired
    private ComService comService;

    @RequestMapping(value = "/user/c_register", method = RequestMethod.GET)
    public String regGET() throws Exception{
        return "user/c_register";
    }

    @RequestMapping(value = "user/c_register", method = RequestMethod.POST)
    public String c_register(ComDTO dto) throws Exception {
        comService.regist(dto);
        return "user/c_register";
    }
}
