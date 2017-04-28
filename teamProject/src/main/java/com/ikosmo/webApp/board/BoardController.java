package com.ikosmo.webApp.board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ikosmo.webApp.comments.CommentsDAOInterface;
import com.ikosmo.webApp.comments.CommentsVO;

@Controller
public class BoardController {
	@Autowired
	SqlSession sqlSession;
	
	public ModelAndView selectAll(String veiwName){
		BoardDAOInterface dao = sqlSession.getMapper(BoardDAOInterface.class);
		List<BoardVO> list = dao.selectAll();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName(veiwName);
		
		return mav;
	}
	public ModelAndView returnLogin(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/login");
		return mav;
	}
	
	@RequestMapping("/community")
	public ModelAndView community(HttpServletRequest request){		
		HttpSession session = request.getSession();
		if(session.getAttribute("sesUserName")==null){
			return returnLogin();
		}
		return selectAll("community");
	}
	@RequestMapping("/oneAndOne")
	public ModelAndView ondAndOne(HttpServletRequest request){
		HttpSession session = request.getSession();
		if(session.getAttribute("sesUserName")==null){
			return returnLogin();
		}
		BoardDAOInterface dao = sqlSession.getMapper(BoardDAOInterface.class);
		List<BoardVO> list = dao.selectOneAndOne((String)session.getAttribute("sesUserId"));
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("oneAndOne");
		
		return mav;
	}
	@RequestMapping("/notice")
	public ModelAndView notice(HttpServletRequest request){
		HttpSession session = request.getSession();
		if(session.getAttribute("sesUserName")==null){
			return returnLogin();
		}
		return selectAll("notice");
	}
	public ModelAndView viewBBS(@RequestParam("num") int num, String viewName){
		BoardDAOInterface dao = sqlSession.getMapper(BoardDAOInterface.class);
		BoardVO vo = dao.selectRecord(num);
		
		CommentsDAOInterface cDao = sqlSession.getMapper(CommentsDAOInterface.class);
		List<CommentsVO> cList = cDao.selectAll(num);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", vo);
		mav.addObject("cList", cList);
		mav.setViewName(viewName);
		
		return mav;
	}
	
	@RequestMapping("/view")
	public ModelAndView view(@RequestParam("num") int num){
		return viewBBS(num, "view");
	}
	@RequestMapping("/commentWrite")
	public ModelAndView commentWrite(CommentsVO vo){
		CommentsDAOInterface cDao = sqlSession.getMapper(CommentsDAOInterface.class);
		int result = cDao.insertRecord(vo);
		
		List<CommentsVO> cList = cDao.selectAll(vo.getBbsNum());
		BoardDAOInterface dao = sqlSession.getMapper(BoardDAOInterface.class);
		BoardVO bVo = dao.selectRecord(vo.getBbsNum());

		
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", bVo);
		mav.addObject("cList", cList);
		mav.setViewName("view");

		return mav;
	}
	@RequestMapping("/write")
	public ModelAndView  write(@RequestParam("category") String category, HttpServletRequest request){
		HttpSession session = request.getSession();		
		ModelAndView mav = new ModelAndView();
		mav.addObject("category", category);
		mav.addObject("userId", session.getAttribute("sesUserId"));
		mav.addObject("userName",session.getAttribute("sesUserName"));
		mav.setViewName("write");
		return mav;
	}
	@RequestMapping("/writeOk")
	public ModelAndView writeOk(BoardVO vo, HttpServletRequest request){
		vo.setIp(request.getRemoteAddr());
		BoardDAOInterface dao = sqlSession.getMapper(BoardDAOInterface.class);
		int result = dao.insertRecord(vo);
		
		return selectAll("community");
	}
	@RequestMapping("/commentsDel")
	public ModelAndView commentsDel(@RequestParam("commentNum") int commentNum, @RequestParam("bbsNum") int bbsNum){
		CommentsDAOInterface dao = sqlSession.getMapper(CommentsDAOInterface.class);
		dao.deleteRecord(commentNum);	
		
		return viewBBS(bbsNum, "view");
	}
	@RequestMapping("/bbsDel")
	public ModelAndView bbsDel(@RequestParam("bbsNum") int bbsNum){
		
		CommentsDAOInterface cDao = sqlSession.getMapper(CommentsDAOInterface.class);
		cDao.deleteAll(bbsNum);
		BoardDAOInterface dao = sqlSession.getMapper(BoardDAOInterface.class);
		dao.deleteRecord(bbsNum);		
		
		return selectAll("community");
	}
	@RequestMapping("/bbsUpdate")
	public ModelAndView bbsUpdate(@RequestParam("bbsNum") int bbsNum){
		return viewBBS(bbsNum, "bbsUpdate");
	}
	
	@RequestMapping("/bbsUpdateOk")
	public ModelAndView bbsUpdateOk(BoardVO vo){
		BoardDAOInterface dao = sqlSession.getMapper(BoardDAOInterface.class);
		dao.updateRecord(vo);

		return viewBBS(vo.getBbsNum(), "view");
	}
	@RequestMapping("/commentUpdate")
	public ModelAndView commentUpdate(CommentsVO vo, @RequestParam("bbsNum") int bbsNum){
		CommentsDAOInterface cDao = sqlSession.getMapper(CommentsDAOInterface.class);
		cDao.updateRecord(vo);
		return viewBBS(bbsNum, "view");
	}
}













