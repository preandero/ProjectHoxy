package com.lec.spring.resume.controller;


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


}
