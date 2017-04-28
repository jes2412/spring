package com.ikosmo.webApp.member;

import java.util.List;

public interface MemberDAOInterface {
	//회원가입
	public Integer insertRecord(MemberVO vo);
	//로그인
	public MemberVO loginChk(MemberVO vo);
	//회원 전체조회
	public List<MemberVO> selectAll();
	//회원 탈퇴처리
	public int deleteRecord(String userId);
	//개별회원 상세조회
	public MemberVO selectRecord(String userId);
	//회원정보 업데이트
	public int updateCusRecord(MemberVO vo);
}
