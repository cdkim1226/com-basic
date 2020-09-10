package com.ncs.mapper;

import java.util.List; 

import org.springframework.stereotype.Repository;

import com.ncs.vo.BoardVO;

@Repository
public interface BoardMapper {

	public List<BoardVO> selectList();

}
