package com.ncs.mapper;



import java.util.List;

import com.ncs.vo.ReplyVO;

public interface ReplyMapper {

	/* ReplyVO selectOne(ReplyVO replyVO); */
	int insert(ReplyVO replyVO);
	List<ReplyVO> selectList(int seq);
	int update(ReplyVO replyVO);
	int modify(ReplyVO replyVO);
	ReplyVO get(ReplyVO replyVO);
	int delete(ReplyVO replyVO);
	

}
