package com.ncs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ManagerController {

	@RequestMapping(value = "/user",method=RequestMethod.GET)
	public ModelAndView user(ModelAndView mv) {
		mv.setViewName("managerPage/user");
		return mv;
	}
	
	@RequestMapping(value = "/event",method=RequestMethod.GET)
	public ModelAndView event(ModelAndView mv) {
		mv.setViewName("managerPage/event");
		return mv;
	}
	
	@RequestMapping(value = "/blog",method=RequestMethod.GET)
	public ModelAndView blog(ModelAndView mv) {
		mv.setViewName("managerPage/blog");
		return mv;
	}
}
