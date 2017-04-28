package com.ikosmo.webApp.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Autowired //이거해주면 sqlSession을 찾아서 알아서 집어넣어줌
	SqlSession sqlSession;
	
	@RequestMapping("/member/login")
	public String login(){
		return "login";
	}
	@RequestMapping("/member/join")
	public String member(){
		return "member";
	}
	@RequestMapping("/member/joinOk")
	public ModelAndView join(MemberVO vo){
		MemberDAOInterface dao = sqlSession.getMapper(MemberDAOInterface.class);
		ModelAndView mav = new ModelAndView();
		dao.insertRecord(vo);
		
		mav.setViewName("home");
		
		return mav;
	}
	@RequestMapping("/member/loginOk")
	public ModelAndView loginOk(MemberVO vo, HttpServletRequest request){
		HttpSession session = request.getSession();
		
		ModelAndView mav = new ModelAndView();

		MemberDAOInterface dao = sqlSession.getMapper(MemberDAOInterface.class);
		MemberVO returnVo = dao.loginChk(vo);
		if(!returnVo.getUserName().equals(null) && returnVo.getUserName() != null){
			session.setAttribute("sesUserName", returnVo.getUserName());
			session.setAttribute("sesUserRate", returnVo.getUserRate());
			session.setAttribute("sesUserId", returnVo.getUserId());
		} 
		mav.addObject("vo", returnVo);
		mav.setViewName("home");
		
		return mav;
	}
	@RequestMapping("/member/logout")
	public String logout(HttpServletRequest request){
		HttpSession session = request.getSession();
		session.invalidate();		
		
		return "home";
	}
}






