package com.lec.spring.app;

import com.lec.spring.app.persistence.AppDAO;
import org.springframework.ui.Model;

import java.util.Map;

public class RListCommand implements ACommand{

    @Override
    public void execute(Model model) {
        Map<String, Object> map = model.asMap();
        int u_uid = (Integer) map.get("u_uid");
        int h_uid = (Integer) map.get("h_uid");


        AppDAO dao = C.sqlSession.getMapper(AppDAO.class);
        model.addAttribute("Rlist", dao.selectRByUid(u_uid));
        model.addAttribute("totalApp", dao.selectByhid(h_uid).size());//지원자수
        model.addAttribute("gender1", dao.genderCount1(h_uid).size());//성별 (남)
        model.addAttribute("gender2", dao.genderCount2(h_uid).size());//성별 (여)

        model.addAttribute("age20", dao.age20(h_uid));//나이
        model.addAttribute("age30", dao.age30(h_uid));//나이
        model.addAttribute("age40", dao.age40(h_uid));//나이
        model.addAttribute("age50", dao.age50(h_uid));//나이
        model.addAttribute("age60", dao.age60(h_uid));//나이

        model.addAttribute("toeic500", dao.toeic500(h_uid));//토익
        model.addAttribute("toeic600", dao.toeic600(h_uid));//토익
        model.addAttribute("toeic700", dao.toeic700(h_uid));//토익
        model.addAttribute("toeic800", dao.toeic800(h_uid));//토익
        model.addAttribute("toeic900", dao.toeic900(h_uid));//토익


        model.addAttribute("career0", dao.career0(h_uid));//경력
        model.addAttribute("career1", dao.career1(h_uid));//경력
        model.addAttribute("career3", dao.career3(h_uid));//경력
        model.addAttribute("career5", dao.career5(h_uid));//경력
        model.addAttribute("career10", dao.career10(h_uid));//경력

    }
}
