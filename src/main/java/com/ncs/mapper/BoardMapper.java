package com.ncs.mapper;

import java.util.List; 

import org.springframework.stereotype.Repository;

import com.ncs.util.SearchCriteria;
import com.ncs.vo.BoardVO;

@Repository
public interface BoardMapper {

	public List<BoardVO> selectList();
	public int insert(BoardVO boardVO);
	public BoardVO selectOne(BoardVO boardVO);
	public int update(BoardVO boardVO);
	public int delete(BoardVO boardVO);
	public int totalRowCount();
	public int searchRowCount(SearchCriteria searchCriteria);
	public List<BoardVO> searchList(SearchCriteria searchCriteria);
}
