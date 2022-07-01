package com.js.test2.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.js.test2.service.MainService;

@Controller
public class MainController {

	private static final Logger log = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	MainService service;
	
	@RequestMapping("main.do")
	public String main() {
		log.info("controller - main.do");
		
		return "main/main";
	}
	@RequestMapping("left.do")
	public String left(HttpServletRequest req, Model model) {
		log.info("controller - left.do");
		
		service.leftList(req, model);
		return "main/left";
	}
	@RequestMapping("center.do")
	public String center(HttpServletRequest req, Model model) {
		log.info("controller - center.do");
		
		service.leftList(req, model);
		return "main/center";
	}
	
}
