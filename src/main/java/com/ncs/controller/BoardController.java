package com.ncs.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ncs.service.BoardService;
import com.ncs.vo.BoardVO;

@RequestMapping(value = "/board/")
@Controller
public class BoardController { 
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value = "/board")
	public ModelAndView board(ModelAndView mv) {
		List<BoardVO> list = boardService.selectList();
		mv.addObject("Banana", list);
			System.out.println(list);
		mv.setViewName("board/board");
		return mv;
	}

}
