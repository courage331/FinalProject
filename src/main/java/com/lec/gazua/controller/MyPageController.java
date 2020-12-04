package com.lec.gazua.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("MyPage")
public class MyPageController {

	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping("/")
	public String helloText() {
		return "Hello MyPage";
	}
	
}
