package com.ikosmo.webApp.order;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping("/myPageUpdate")
	public String mypageUpdate(){
		
		return "myPageUpdate";
	}
}
