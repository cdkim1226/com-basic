package com.ncs.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncs.mapper.ReplyMapper;
import com.ncs.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyMapper replyMapper;

	@Override
	public ReplyVO selectOne(ReplyVO replyVO) {
		return replyMapper.selectOne(replyVO);
	}
	
}
