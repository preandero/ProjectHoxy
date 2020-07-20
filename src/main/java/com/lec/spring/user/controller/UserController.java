//package com.lec.spring.user.controller;
//
//import com.lec.spring.user.domain.User;
//import com.lec.spring.user.service.UserService;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import javax.inject.Inject;
//
//@Controller
//public class UserController {
//
//    private static final Logger logger = LoggerFactory.getLogger(UserController.class);
//
//    @Inject
//    private UserService service;
//
//    @RequestMapping(value = "/login", method = RequestMethod.GET)
//    public void login() throws Exception{
//        logger.info("login GET......");
//    }
//
//    @RequestMapping(value = "/loginOk", method = RequestMethod.POST)
//    public void loginOk(User user) throws Exception{
//        logger.info("loginOk={}", user);
//
//        try {
//            service.login();
//        }catch (Exception e){
//            e.printStackTrace();
//        }
//
//    }
//
//
//}