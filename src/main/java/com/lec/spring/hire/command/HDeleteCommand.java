//package com.lec.spring.hire.command;
//
//import com.lec.spring.hire.beans.IWriteDAO;
//import com.lec.spring.hire.domain.C;
//import org.springframework.ui.Model;
//
//import java.util.Map;
//
//public class HDeleteCommand implements HCommand {
//
//	@Override
//	public void excute(Model model) {
//		Map<String, Object>map = model.asMap();
//		int uid = (Integer)map.get("h_uid");
//
//		IWriteDAO dao = C.sqlSession.getMapper(IWriteDAO.class);
//		model.addAttribute("delete", dao.deleteByUid(uid));
//
//
//	}
//
//
//
//}
