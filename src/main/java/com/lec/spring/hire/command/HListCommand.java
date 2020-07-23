package com.lec.spring.hire.command;


import com.lec.spring.hire.beans.IWriteDAO;
import com.lec.spring.hire.domain.C;
import org.springframework.ui.Model;


public class HListCommand implements HCommand {

	@Override
	public void excute(Model model) {
		
		IWriteDAO dao = C.sqlSession.getMapper(IWriteDAO.class);
		model.addAttribute("list",dao.select());
				
		

	}

}
