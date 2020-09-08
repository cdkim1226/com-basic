package com.ncs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	@RequestMapping(value = "/userLogin" , method=RequestMethod.GET)
	public ModelAndView userLogin(ModelAndView mv) {
		mv.setViewName("user/userLogin");
		return mv;
	}
	
	@RequestMapping(value = "/userLogout", method=RequestMethod.GET)
	public ModelAndView userLogout(ModelAndView mv) {
		mv.setViewName("user/userLogout");
		return mv;
	}
	
	@RequestMapping(value = "/userEdit", method=RequestMethod.GET)
	public ModelAndView userEdit(ModelAndView mv) {
		mv.setViewName("user/userEdit");
		return mv;
	}
	
	@RequestMapping(value = "/userJoin", method=RequestMethod.GET)
	public ModelAndView userJoin(ModelAndView mv) {
		mv.setViewName("user/userJoin");
		return mv;
	}
}
