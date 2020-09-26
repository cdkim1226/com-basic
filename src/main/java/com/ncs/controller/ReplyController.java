package com.ncs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public ModelAndView postModify(ModelAndView mv,ReplyVO rvo) {
		
		if(replyService.modify(rvo) > 0) {
			mv.setViewName("redirect:/board/boardView?seq="+rvo.getSeq());
			System.out.println("댓글수정"+rvo);
		}else {
			System.out.println("댓글수정실패"+rvo);
		}
		return mv;
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public ModelAndView getModify(ModelAndView mv, ReplyVO rvo) {
		return mv.addObject("reply", replyService.get(rvo));
	}
	
	@RequestMapping(value = "/delete")
	public String delete(ReplyVO rvo) {
		replyService.delete(rvo);
		
		return "redirect:/board/boardView?seq="+rvo.getSeq();
	}
}
