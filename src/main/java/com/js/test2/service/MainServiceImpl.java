package com.js.test2.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.js.test2.dao.MainDao;
import com.js.test2.dto.LeftDto;

@Service
public class MainServiceImpl implements MainService{
	
	private static final Logger log = LoggerFactory.getLogger(MainServiceImpl.class);
	
	@Autowired
	MainDao dao;
	@Override
	public void leftList(HttpServletRequest req, Model model) {
		log.info("Service - leftList");
		
		List<LeftDto> list = dao.leftList();
		log.info("list : " + list);
		model.addAttribute("list", list);
	}

}
