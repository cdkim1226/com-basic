package com.ncs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ncs.service.ReplyService;

@RequestMapping(value = "/reply")
@Controller
public class ReplyController {
	
	@Autowired
	ReplyService replyService;
	
	

}
