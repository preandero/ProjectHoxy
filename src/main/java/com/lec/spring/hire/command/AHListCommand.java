
package com.lec.spring.hire.command;

import com.lec.spring.hire.beans.IWriteDAO;
import com.lec.spring.hire.domain.C;
import org.springframework.ui.Model;


public class AHListCommand implements HCommand {
    @Override
    public void excute(Model model) {

        IWriteDAO dao = C.sqlSession.getMapper(IWriteDAO.class); //알아서 mybatis가 dao객체를 만들어서 준다!
        model.addAttribute("list", dao.adminselect());


    } // end execute()
} // end Command






