package com.ncs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ncs.service.UserService;
import com.ncs.vo.UserVO;

@RequestMapping(value = "/user")
@Controller
public class UserController {
	
	@Autowired
	UserService userService;

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
	
	@RequestMapping(value = "/userJoin", method= RequestMethod.GET)
	public void getJoin() {
	}
	
	@RequestMapping(value = "/userJoin", method=RequestMethod.POST)
	public String postJoin(UserVO vo, HttpServletRequest request) {
		userService.join(vo);
		System.out.println(vo);
		return "redirect:home";
		
	}
}
