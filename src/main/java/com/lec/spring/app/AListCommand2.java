package com.lec.spring.app;

import com.lec.spring.app.persistence.AppDAO;
import org.springframework.ui.Model;

import java.util.Map;

public class AListCommand2 implements ACommand {
    @Override
    public void execute(Model model) {
        Map<String, Object> map = model.asMap();
        int c_uid = (Integer) map.get("c_uid");
        //period, view, search

        int hid = 0;
        if(map.get("hid")!=null){
            hid=(int)Integer.parseInt((String)map.get("hid"));
        }


        int view1 = 0;
        int view2 = 1;
        if(map.get("view")!=null&&(int)Integer.parseInt((String)map.get("view"))!=2){
            view1=(int)Integer.parseInt((String)map.get("view"));
            view2=(int)Integer.parseInt((String)map.get("view"));

        }
        String search = "%%";
        if(map.get("view")!=null){
            search = "%"+(String)map.get("search")+"%";
        }
        AppDAO dao = C.sqlSession.getMapper(AppDAO.class);

        if(hid==0) {
            model.addAttribute("Alist", dao.selectAByCid1(c_uid, view1, view2, search));
        }else {
            model.addAttribute("Alist", dao.selectAByCid2(c_uid, hid, view1, view2, search));
        }
        model.addAttribute("Hlist", dao.selectHByCid(c_uid)); //공고 목록 list

        /*
        AppDAO dao = C.sqlSession.getMapper(AppDAO.class);
        model.addAttribute("Alist", dao.selectAByCid1(u_uid,period,view1,view2,search));
         */
    }
}
