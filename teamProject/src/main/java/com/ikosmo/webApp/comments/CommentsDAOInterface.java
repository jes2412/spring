package com.ikosmo.webApp.comments;

import java.util.List;

public interface CommentsDAOInterface {
	public List<CommentsVO> selectAll(int bbsNum);
	public int insertRecord(CommentsVO vo);
	public int deleteRecord(int commentNum);
	public int deleteAll(int bbsNum);
	public int updateRecord(CommentsVO vo);
}
