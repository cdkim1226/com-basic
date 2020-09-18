package com.ncs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ncs.service.ReplyService;
import com.ncs.vo.BoardVO;
import com.ncs.vo.ReplyVO;

@RequestMapping(value = "/reply")
@Controller
public class ReplyController {
	
	@Autowired
	ReplyService replyService;
	
	
	@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
	public String replyWrite(ReplyVO rvo) {
		replyService.insert(rvo);
		return  ("redirect:/board/boardView?seq="+rvo.getSeq());
	}
	  
	@RequestMapping(value = "/replyWrite", method = RequestMethod.GET)
	public String getReplyWrite(BoardVO vo) {
		return ("redirect:/board/boardView?seq="+vo.getSeq());
	}
}
