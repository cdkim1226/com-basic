package com.ncs.service;

import java.util.List; 

import com.ncs.vo.BoardVO;

public interface BoardService { 

	List<BoardVO> selectList();
	int insert(BoardVO boardVO);
	BoardVO selectOne(BoardVO boardVO);
	int update(BoardVO boardVO);
	
}
