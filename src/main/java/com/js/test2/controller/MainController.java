package com.js.test2.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	private static final Logger log = LoggerFactory.getLogger(MainController.class);
	
	@RequestMapping("main.do")
	public String main() {
		log.info("controller - main.do");
		
		return "main/main";
	}
}
