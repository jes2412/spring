package com.ikosmo.webApp.admin;

import java.util.List;

import com.ikosmo.webApp.member.MemberVO;

public interface AdminDAOInterface {
	//로그인
	public AdminVO loginChk(AdminVO vo);
	//관리자 전체조회
	public List<AdminVO> selectAll();
	//관리자 추가
	public Integer insertRecord(AdminVO vo);
	//관리자 삭제
	public int deleteRecord(String adminId);
	//관리자 수정
	public int updateRecord(AdminVO vo);
	//관리자 한명 조회
	public AdminVO selectRecord(String adminId);
}
