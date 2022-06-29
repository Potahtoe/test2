package com.js.test2.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.js.test2.dto.LeftDto;

@Repository
public class MainDaoImpl implements MainDao{

	private static final Logger log = LoggerFactory.getLogger(MainDaoImpl.class);
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<LeftDto> leftList() {
		log.info("dao - leftList");
		
		MainDao dao = sqlSession.getMapper(MainDao.class);
		return dao.leftList();
	}

}
