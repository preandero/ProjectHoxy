package com.lec.spring.user.controller;

import com.lec.spring.user.domain.UserDTO;
import com.lec.spring.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;

@Controller
@RequestMapping("/user")
public class userRegisterController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView register(ModelAndView mav){
        mav.setViewName("user/register");
        return mav;
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView register(UserDTO userDTO, ModelAndView mav) throws Exception {
        userService.register(userDTO);
        mav.setViewName("login");
        return mav;
    }




}
