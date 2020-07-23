package com.lec.spring.app.controller;

import com.lec.spring.app.ACommand;
import com.lec.spring.app.AWriteCommand;
import com.lec.spring.app.C;
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
    public String hireDetail(Model model) {
        return "/hire/hireDetail";
    }

    @RequestMapping(value = "/appWriteOk", method = RequestMethod.POST)
    public String appWriteOk(AppDTO dto, Model model) {
        model.addAttribute("dto", dto);
        new AWriteCommand().execute(model);
        return "/application/appWriteOk";
    }

    @RequestMapping("/appmyList")
    public String appmyList(Model model) {
        return "/application/appmyList";
    }
}
