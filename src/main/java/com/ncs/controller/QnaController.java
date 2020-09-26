package com.ncs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping(value = "/qna")
@Controller
public class QnaController {

	
	@RequestMapping(value = "/qna")
	public ModelAndView qna(ModelAndView mv) {
		mv.setViewName("qna/qna");
		return mv;
	}
}
