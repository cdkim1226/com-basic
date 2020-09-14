package com.ncs.service;

import java.util.List;

import com.ncs.util.SearchCriteria;
import com.ncs.vo.BoardVO;

public interface BoardService { 

	List<BoardVO> selectList();
	int insert(BoardVO boardVO);
	BoardVO selectOne(BoardVO boardVO);
	int update(BoardVO boardVO);
	int delete(BoardVO boardVO);
	int totalRowCount();
	int searhRowCount(SearchCriteria searchCriteria);
	List<BoardVO> searchList(SearchCriteria searchCriteria);
}
