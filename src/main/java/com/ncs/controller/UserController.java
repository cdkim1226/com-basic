package com.ncs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
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

	@RequestMapping(value = "/userLogin", method = RequestMethod.GET)
	public ModelAndView userLogin(ModelAndView mv) {
		mv.setViewName("user/userLogin");
		return mv;
	}
	
	@RequestMapping(value = "/userLogin", method = RequestMethod.POST)
	public ModelAndView userLogin(UserVO vo, HttpServletRequest request, ModelAndView mv) {
		String password = vo.getUserpw();
		vo = userService.read(vo.getUserid());
		System.out.println(vo);
		if(vo != null) {
			if(vo.getUserpw().equals(password)) {
				request.getSession().setAttribute("logID", vo.getUserid());
				request.getSession().setAttribute("logName",vo.getUsername());
				mv.setViewName("/home");
			}else {
				mv.addObject("message","Password 오류");
			}
		}else {
			mv.addObject("message","ID 오류");
		}
		return mv;
	}
	
	@RequestMapping(value = "/userLogout", method=RequestMethod.GET)
	public ModelAndView userLogout(ModelAndView mv) {
		mv.setViewName("user/userLogout");
		return mv;
	}
	
	@RequestMapping(value = "/userDetail")
	public ModelAndView UserDetail(HttpServletRequest request, ModelAndView mv, UserVO vo) {
		String userid="";
		HttpSession session = request.getSession(false);
		if(session != null && session.getAttribute("logID") != null) {
			userid = (String)session.getAttribute("logID");
			
		}
		vo.setUserid(userid);
		vo = userService.selectOne(vo);
		if(vo != null) {
			mv.addObject("get",vo);
			mv.setViewName("user/userDetail");
		}
		return mv;
	}
	
	@RequestMapping(value = "/userEdit", method=RequestMethod.GET)
	public ModelAndView getEdit(ModelAndView mv, HttpServletRequest request) {
		UserVO vo = new UserVO();
		String userid = (String)request.getSession().getAttribute("logID");
		vo.setUserid(userid);
		vo = userService.selectOne(vo);
		mv.addObject("get",vo);
		mv.setViewName("user/userEdit");
		return mv;
	}
	
	@RequestMapping(value = "/userEdit", method = RequestMethod.POST)
	public ModelAndView postEdit(UserVO vo, ModelAndView mv, HttpServletRequest request) {
		
		if(userService.update(vo) > 0) {
			mv.addObject("code", 0);
		}else {
			mv.addObject("code", 1);
		}
			mv.setViewName("jsonView");
			return mv;
	}
	
	@RequestMapping(value = "/userJoin", method= RequestMethod.GET)
	public void getJoin() {
	}
	
	@RequestMapping(value = "/userJoin", method=RequestMethod.POST)
	public String postJoin(UserVO vo, HttpServletRequest request) {
		userService.join(vo);
		System.out.println(vo);
		return "redirect:/user/userLogin";
		
	}
	
	 @RequestMapping(value = "/useridDuplicate")
	 public ModelAndView useridDuplicate(ModelAndView mv, UserVO vo){
		 if (userService.useridDuplicate(vo) > 0 ) {
	         mv.addObject("message","fail");
	     } else {
	         mv.addObject("message","200");
	     }
	     mv.setViewName("jsonView");
	     return mv;

	 }
	 
	 @RequestMapping(value = "/nicknameDuplicate")
	 public ModelAndView nicknameDuplicate(ModelAndView mv, UserVO vo){
	     if (userService.nicknameDuplicate(vo) > 0 ) {
	         mv.addObject("message","fail");
	     } else {
	         mv.addObject("message","200");
	     }
	     mv.setViewName("jsonView");
	     return mv;
	 }
	 
	 @RequestMapping(value = "/emailDuplicate")
	 public ModelAndView emailDuplicate(ModelAndView mv, UserVO vo){
	     if (userService.emailDuplicate(vo) > 0 ) {
	         mv.addObject("message","fail");
	     } else {
	         mv.addObject("message","200");
	     }
	     mv.setViewName("jsonView");
	     return mv;

	 }
}
