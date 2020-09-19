package com.ncs.service;

import java.util.List;

import com.ncs.vo.ReplyVO;

public interface ReplyService {

	/* ReplyVO selectOne(ReplyVO replyVO); */
	List<ReplyVO> selectList(int seq);
	int insert(ReplyVO replyVO);
	int update(ReplyVO replyVO);
	int modify(ReplyVO replyVO);
	ReplyVO get(ReplyVO replyVO);
}
