//
//package com.lec.spring.hire.command;
//
//import com.lec.spring.hire.beans.IWriteDAO;
//import com.lec.spring.hire.domain.C;
//import org.springframework.ui.Model;
//
//
//public class AHListCommand implements Command {
//
//	@Override
//	public void execute(Model model) {
//
//		@Override
//		public void excute(Model model) {
////		BWriteDAO dao =new BWriteDAO();
////		List<BWriteDTO> list = dao.select();
////		model.addAttribute("list",list);
//
//			//Mybatis 사용
//			IWriteDAO dao = C.sqlSession.getMapper(IWriteDAO.class); //알아서 mybatis가 dao객체를 만들어서 준다!
//			model.addAttribute("list",dao.select());
//
//
//		} // end execute()
//} // end Command
//
//
//
//
//
//
