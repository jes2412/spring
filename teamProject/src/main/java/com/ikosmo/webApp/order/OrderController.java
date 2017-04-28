package com.ikosmo.webApp.order;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ikosmo.webApp.admin.AdminController;
import com.ikosmo.webApp.member.MemberDAOInterface;
import com.ikosmo.webApp.member.MemberVO;

@Controller
public class OrderController {
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping("/cart")
	public String cart(){
		return "cart";
	}
	@RequestMapping("/memberDel")
	public String memberDel(){
		return "memberDel";
	}
	@RequestMapping("/memberDelOk")
	public String memberDelOk(MemberVO vo, HttpSession session){
		OrderDAOInterface dao = sqlSession.getMapper(OrderDAOInterface.class);
		dao.deleteRecord(vo);
		session.invalidate();
		return "home";
	}
	public ModelAndView viewCusDetail(String userId, String viewName){
		MemberDAOInterface dao = sqlSession.getMapper(MemberDAOInterface.class);
		MemberVO vo = dao.selectRecord(userId);
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", vo);
		mav.setViewName(viewName);
		return  mav;
	}
	@RequestMapping("/myPageUpdate")
	public ModelAndView myPageUpdate(HttpSession session){
		return  viewCusDetail((String)session.getAttribute("sesUserId"), "myPageUpdate");
	}
	@RequestMapping("/myPageUpdateOk")
	public ModelAndView myPageUpdateOk(MemberVO vo){
		MemberDAOInterface dao = sqlSession.getMapper(MemberDAOInterface.class);
		int result = dao.updateCusRecordForUser(vo);
		
		return viewCusDetail(vo.getUserId(), "myPageUpdate");
	}
}
























