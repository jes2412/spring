package com.ikosmo.webApp.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ikosmo.webApp.member.MemberDAOInterface;
import com.ikosmo.webApp.member.MemberVO;

@Controller
public class AdminController {
	@Autowired 
	SqlSession sqlSession;

	@RequestMapping("/admin/login")
	public String adminLogin(){
		return "adminLogin";
	}
	@RequestMapping("/admin/loginOk")
	public ModelAndView adminLoginOk(AdminVO vo, HttpServletRequest request){
		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView();
		
		AdminDAOInterface dao = sqlSession.getMapper(AdminDAOInterface.class);
		AdminVO returnVo = dao.loginChk(vo);

		if(!returnVo.getAdminName().equals(null) && returnVo.getAdminName() != null){
			session.setAttribute("sesAdminName", returnVo.getAdminName());
		} 
		mav.addObject("vo", returnVo);
		mav.setViewName("/admin");
		return mav;
	}
	@RequestMapping("/admin/term")
	public String adminTerm(){
		return "admin-term";
	}
	@RequestMapping("/admin/bean")
	public String adminBean(){
		return "admin-bean";
	}
	@RequestMapping("/admin/order")
	public String adminOrder(){
		return "admin";
	}
	@RequestMapping("/admin/orderBBS")
	public String adminBBS(){
		return "adminOrderBBS";
	}
	@RequestMapping("/admin/cmBBS")
	public String cmBBS(){
		return "cmBBS";
	}
	@RequestMapping("/admin/imBBS")
	public String imBBS(){
		return "imBBS";
	}
	
	public ModelAndView viewAdmin(){
		AdminDAOInterface dao = sqlSession.getMapper(AdminDAOInterface.class);
		List<AdminVO> list = dao.selectAll();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("adminManage");
		return mav;
	}
	
	@RequestMapping("/admin/adminManage")
	public ModelAndView adminManage(){
		return viewAdmin();
	}
	@RequestMapping("/admin/add")
	public ModelAndView adminAdd(AdminVO vo){
		AdminDAOInterface dao = sqlSession.getMapper(AdminDAOInterface.class);
		dao.insertRecord(vo);
		return viewAdmin();
	}
	@RequestMapping("/admin/del")
	public ModelAndView adminDel(String adminId){
		AdminDAOInterface dao = sqlSession.getMapper(AdminDAOInterface.class);
		int result = dao.deleteRecord(adminId);
		return viewAdmin();
	}
	@RequestMapping("/admin/update")
	public ModelAndView adminUpdate(String adminId){
		AdminDAOInterface dao = sqlSession.getMapper(AdminDAOInterface.class);
		AdminVO vo = dao.selectRecord(adminId);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", vo);
		mav.setViewName("adminUpdate");
		
		return mav;
	}
	@RequestMapping("/admin/updateOk")
	public ModelAndView adminUpdateOk(AdminVO vo){
		AdminDAOInterface dao = sqlSession.getMapper(AdminDAOInterface.class);
		int result = dao.updateRecord(vo);
		return viewAdmin();
	}
	
	public ModelAndView cusManageView(){
		MemberDAOInterface dao = sqlSession.getMapper(MemberDAOInterface.class);
		List<MemberVO> list = dao.selectAll();
		 ModelAndView mav = new ModelAndView();
		 mav.addObject("list", list);
		 mav.setViewName("customerManage");
		 return mav;
	}
	
	@RequestMapping("/admin/customerManage")
	public ModelAndView customerManage(){
		return cusManageView();
	}
	@RequestMapping("/admin/cusDel")
	public ModelAndView cusDel(String userId){
		MemberDAOInterface dao = sqlSession.getMapper(MemberDAOInterface.class);
		int result = dao.deleteRecord(userId);		
		return cusManageView();
	}
	public ModelAndView viewCustomerDetail(String userId){
		MemberDAOInterface dao = sqlSession.getMapper(MemberDAOInterface.class);
		MemberVO vo = dao.selectRecord(userId);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", vo);
		mav.setViewName("cusView");
		return mav;
	}
	@RequestMapping("/admin/cusView")
	public ModelAndView cusView(String userId){
		return viewCustomerDetail(userId);
	}
	@RequestMapping("/admin/cusUpdate")
	public ModelAndView cusUpdate(MemberVO vo){
		MemberDAOInterface dao =sqlSession.getMapper(MemberDAOInterface.class);
		int result = dao.updateCusRecord(vo);
		return viewCustomerDetail(vo.getUserId());
	}
}













