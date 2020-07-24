package com.lec.spring.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.social.google.connect.GoogleConnectionFactory;
import org.springframework.social.oauth2.GrantType;
import org.springframework.social.oauth2.OAuth2Operations;
import org.springframework.social.oauth2.OAuth2Parameters;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class LoginController {
    /* NaverLoginBO */
    //private NaverLoginBO naverLoginBO;
    //private String apiResult = null;

    /*@Autowired
    private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
        this.naverLoginBO = naverLoginBO;
    }*/

    @Autowired
    private GoogleConnectionFactory googleConnectionFactory;

    @Autowired
    private OAuth2Parameters googleOAuth2Parameters;

    //로그인 첫 화면 요청 메소드
    @RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
    public String login(Model model, HttpSession session) {

        /* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
        /*String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);*/

        //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
        //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
        //System.out.println("네이버:" + naverAuthUrl);

        //네이버
        //model.addAttribute("url", naverAuthUrl);

        /* 구글code 발행 */
        OAuth2Operations oauthOperations = googleConnectionFactory.getOAuthOperations();
        String url = oauthOperations.buildAuthorizeUrl(GrantType.AUTHORIZATION_CODE, googleOAuth2Parameters);

        System.out.println("구글:" + url);

        model.addAttribute("google_url", url);

        /* 생성한 인증 URL을 View로 전달 */
        return "login/login";
    }

    //네이버 로그인 성공시 callback호출 메소드
    @RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
    public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
            throws IOException {
        System.out.println("여기는 callback");

        /* 네이버 로그인 성공 페이지 View 호출 */
        return "login/naver/naverSuccess";
    }

    // 구글 Callback호출 메소드
    @RequestMapping(value = "/oauth2callback", method = { RequestMethod.GET, RequestMethod.POST })
    public String googleCallback(Model model, @RequestParam String code) throws IOException {
        System.out.println("여기는 googleCallback");

        return "login/google/googleSuccess";
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
