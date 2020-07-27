package com.lec.spring.app.controller;

import com.lec.spring.app.*;
import com.lec.spring.app.domain.AppDTO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/app")
public class appController {

    private ACommand command;

    // MyBabatis
    private SqlSession sqlSession;

    @Autowired
    public void setSqlSession(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
        C.sqlSession = sqlSession;
    }

    @RequestMapping("/hireDetail")
    public String hireDetail(int u_uid,Model model) {
        model.addAttribute("u_uid", u_uid);
        new RListCommand().execute(model);
        return "/hire/hireDetail";
    }

    @RequestMapping(value = "/appWriteOk", method = RequestMethod.POST)
    public String appWriteOk(AppDTO dto, Model model) {
        model.addAttribute("dto", dto);
        new AWriteCommand().execute(model);
        return "/application/appWriteOk";
    }

    @RequestMapping("/appmyList")
    public String appmyList(int u_uid,Model model) {

        model.addAttribute("u_uid", u_uid);
        new AListCommand().execute(model);
        new RListCommand().execute(model);
        return "/application/appmyList";
    }

    @RequestMapping("/appDelete")
    public String appDelete(int a_uid,Model model) {

        model.addAttribute("a_uid", a_uid);
        new ADeleteCommand().execute(model);
        return "/application/appDeleteOk";
    }
    @RequestMapping("/appUpdate")
    public String appUpdate(int a_uid,int r_uid,Model model) {

        model.addAttribute("a_uid", a_uid);
        model.addAttribute("r_uid", r_uid);
        new AUpdateCommand().execute(model);
        return "/application/appUpdateOk";
    }

    @RequestMapping("/color")
    public String color(Model model) {

        return "index";
    }
}
