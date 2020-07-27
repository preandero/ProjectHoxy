package com.lec.spring.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class LoginController {


    //로그인 첫 화면 요청 메소드
    @RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
    public String login(Model model, HttpSession session) {

        return "login/login";
    }

    //기본 로그인폼
    @RequestMapping(value="/loginform.it", method = RequestMethod.GET)
    public String loginform() {

        /* View 정보를 반환하는 부분 */
        return "login/loginform";
    }

    //로그인 성공시 접근할 페이지 요청
    @RequestMapping(value="/loginsuccess.it", method = RequestMethod.GET)
    public String loginsuccess() {

        /* View 정보를 반환하는 부분 */
        return "login/loginsuccess";
    }

    @RequestMapping(value="/loginsuccessU.it", method = RequestMethod.GET)
    public String loginsuccessU() {

        /* View 정보를 반환하는 부분 */
        return "login/loginsuccessU";
    }

    @RequestMapping(value="/loginsuccessC.it", method = RequestMethod.GET)
    public String loginsuccessC() {

        /* View 정보를 반환하는 부분 */
        return "login/loginsuccessC";
    }

    @RequestMapping(value="/loginsuccessA.it", method = RequestMethod.GET)
    public String loginsuccessA() {

        /* View 정보를 반환하는 부분 */
        return "login/loginsuccessA";
    }

    //로그인실패 페이지 요청
    @RequestMapping(value="/loginfail.it", method = RequestMethod.GET)
    public String loginfail() {

        /* View 정보를 반환하는 부분 */
        return "login/loginfail";
    }


    //로그아웃폼 페이지 요청
    @RequestMapping(value="/logoutform.it", method = RequestMethod.GET)
    public String logoutform() {

        /* View 정보를 반환하는 부분 */
        return "login/logoutform";
    }
}
