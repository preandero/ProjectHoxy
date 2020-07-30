package com.lec.spring;

import com.lec.spring.app.ACommand;
import com.lec.spring.user.domain.UserDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class HomeController {
    private ACommand command;

    @RequestMapping("")
    public String home(Model model, HttpSession session) {
        if (session.getAttribute("userSession") != null) {
            UserDTO dto = (UserDTO) session.getAttribute("userSession");
            model.addAttribute("u_uid", dto.getU_uid());
            model.addAttribute("u_name", dto.getU_name());
        }
        return "main2";
    }

}
