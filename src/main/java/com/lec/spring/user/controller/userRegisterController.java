package com.lec.spring.user.controller;

import com.lec.spring.user.domain.UserDTO;
import com.lec.spring.user.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Inject;

@Controller
@RequestMapping("/user")
public class userRegisterController {
    private final UserService userService;
    @Inject
    public userRegisterController(UserService userService){
        this.userService = userService;
    }
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String regGet() throws Exception{
        return "/user/register";
    }
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String regPost(UserDTO userDTO) throws Exception{
        userService.register(userDTO);
        return "/user/register";
    }
}
