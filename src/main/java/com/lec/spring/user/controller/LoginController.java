package com.lec.spring.user.controller;

import com.lec.spring.user.domain.UserDTO;
import com.lec.spring.user.service.UserLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@Controller
public class LoginController {

    @Autowired
    private UserLoginService login_service;

    @RequestMapping(value = "/user/login", method = RequestMethod.GET)
    public String userLogin(HttpSession session, Model model) {

        // 세션만료
        session.invalidate();

        return "user/login";
    }

    @RequestMapping(value = "/user/login", method = RequestMethod.POST)
    @ResponseBody
    public int userLoingPass(UserDTO userDTO, HttpSession httpSession, HttpServletRequest request,
                             HttpServletResponse response, Model model) {

        // userLogin.jsp에서 아이디기억하기 name값(remember) 가져오기
        String user_check = request.getParameter("remember_userId");

        // 로그인 메서드
        int result = login_service.userLogin_service(userDTO, httpSession, user_check, response);

        return result;
    }

    @RequestMapping(value = "user/regSuccess", method = RequestMethod.GET)
    public String user() {

        return "user/regSuccess";
    }

}
