package com.lec.spring.resume.controller;


import com.lec.spring.resume.domain.photoForm;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/resume")
public class resumeController {


    @RequestMapping("/resumeWrite")
    public String Write(Model model){

        return "resume/resumeWrite";
    }

    @RequestMapping (value = "addaction.do")
    public String add_action (Model model, photoForm form) {

        return "";
    }


    }
