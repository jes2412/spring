package com.ikosmo.webApp.board;

import java.util.List;

public interface BoardDAOInterface {
	public List<BoardVO>   selectAll();
	public int insertRecord(BoardVO vo);
	public BoardVO selectRecord(int num);
	public int deleteRecord(int Num);
	public int updateRecord(BoardVO vo);
	public List<BoardVO> selectOneAndOne(String userId);
}
