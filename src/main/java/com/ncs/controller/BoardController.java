package com.ncs.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ncs.service.BoardService;
import com.ncs.service.ReplyService;
import com.ncs.util.PageMaker;
import com.ncs.util.SearchCriteria;
import com.ncs.vo.BoardVO;
import com.ncs.vo.ReplyVO;

@RequestMapping(value = "/board/")
@Controller
public class BoardController { 
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	ReplyService replyService;
	
	@RequestMapping(value = "/board")
	public ModelAndView board(ModelAndView mv, SearchCriteria cri) {
		cri.setSnoEno();
		List<BoardVO> list = boardService.searchList(cri);
		mv.addObject("Banana", list);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalRow(boardService.searhRowCount(cri));
		mv.addObject("pageMaker",pageMaker);
		mv.setViewName("board/board");
		return mv;
	}
	
	@RequestMapping(value = "/boardWrite", method = RequestMethod.POST)
	public ModelAndView boardWrite(ModelAndView mv, BoardVO vo) {
		if(boardService.insert(vo)>0) {
			System.out.println(vo);
			mv.setViewName("redirect:/board/boardView?seq="+vo.getSeq());
		}else {
			mv.setViewName("board/fail");
		}
		return mv;
	}
	
	@RequestMapping(value = "/boardWrite", method = RequestMethod.GET)
	public void WriteForm() {
	}

	@RequestMapping(value = "/boardView")
	public ModelAndView boardView(ModelAndView mv, BoardVO vo, ReplyVO rvo) {
		
		rvo = replyService.selectOne(rvo);
		if(rvo != null) {
			mv.addObject("reply",rvo);
		}
		
		vo = boardService.selectOne(vo);
		if(vo != null) {
			System.out.println(vo);
			mv.addObject("get",vo);
			mv.setViewName("board/boardView");
		}
		return mv;
	}
	
	@RequestMapping(value = "/boardEdit", method = RequestMethod.GET)
	public ModelAndView getEdit(ModelAndView mv, BoardVO vo) {
		System.out.println(boardService.selectOne(vo));
		return mv.addObject("get",boardService.selectOne(vo));
	}
	
	@RequestMapping(value = "/boardEdit",method = RequestMethod.POST)
	public ModelAndView boardEdit(ModelAndView mv, BoardVO vo) {
		if(boardService.update(vo) > 0) {
			System.out.println(vo.getSeq());
			mv.setViewName("redirect:/board/boardView?seq="+vo.getSeq());
		}else {
			mv.setViewName("board/fail");
		}
		return mv;
	}
	
	@RequestMapping(value = "/delete")
	public ModelAndView delete(ModelAndView mv, BoardVO vo) {
		if(boardService.delete(vo) > 0) {
			mv.setViewName("redirect:/board/board");
		}else {
			mv.setViewName("redirect:/board/get?seq="+vo.getSeq());
		}
		return mv;
	}
}
