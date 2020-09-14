package com.ncs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncs.mapper.BoardMapper;
import com.ncs.util.SearchCriteria;
import com.ncs.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardMapper boardMapper;
	
	@Override
	public List<BoardVO> selectList() {
		return boardMapper.selectList();
	}

	@Override
	public int insert(BoardVO boardVO) {
		return boardMapper.insert(boardVO);
	}

	@Override
	public BoardVO selectOne(BoardVO boardVO) {
		return boardMapper.selectOne(boardVO);
	}

	@Override
	public int update(BoardVO boardVO) {
		return boardMapper.update(boardVO);
	}

	@Override
	public int delete(BoardVO boardVO) {
		return boardMapper.delete(boardVO);
	}

	@Override
	public int totalRowCount() {
		return boardMapper.totalRowCount();
	}

	@Override
	public int searhRowCount(SearchCriteria searchCriteria) {
		return boardMapper.searchRowCount(searchCriteria);
	}

	@Override
	public List<BoardVO> searchList(SearchCriteria searchCriteria) {
		return boardMapper.searchList(searchCriteria);
	} 

}
