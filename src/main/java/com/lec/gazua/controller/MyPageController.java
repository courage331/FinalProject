package com.lec.gazua.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MyPageController {

	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping("/")
	public String mypage() {
		
		return "mypage/main";
	}
	
}
