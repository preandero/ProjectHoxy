package com.lec.spring.app;

import com.lec.spring.app.persistence.AppDAO;
import org.springframework.ui.Model;

import java.util.Map;

public class AListCommand implements ACommand {
    @Override
    public void execute(Model model) {
        Map<String, Object> map = model.asMap();
        int u_uid = (Integer) map.get("u_uid");


        AppDAO dao = C.sqlSession.getMapper(AppDAO.class);
        model.addAttribute("Alist", dao.selectAByUid(u_uid));
    }
}
