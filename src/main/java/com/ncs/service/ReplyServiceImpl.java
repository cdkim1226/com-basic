package com.ncs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncs.mapper.ReplyMapper;
import com.ncs.vo.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyMapper replyMapper;

	/*
	 * @Override public ReplyVO selectOne(ReplyVO replyVO) { return
	 * replyMapper.selectOne(replyVO); }
	 */

	@Override
	public int insert(ReplyVO replyVO) {
		return replyMapper.insert(replyVO);
	}

	@Override
	public List<ReplyVO> selectList(int seq) {
		return replyMapper.selectList(seq);
	}

	@Override
	public int update(ReplyVO replyVO) {
		return replyMapper.update(replyVO);
	}

	@Override
	public int modify(ReplyVO replyVO) {
		return replyMapper.modify(replyVO);
	}

	@Override
	public ReplyVO get(ReplyVO replyVO) {
		return replyMapper.get(replyVO);
	}

	@Override
	public int delete(ReplyVO replyVO) {
		return replyMapper.delete(replyVO);
	}
	
}
