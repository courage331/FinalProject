package com.lec.gazua.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {

	@RequestMapping(value = "/mypage")
	public String mypage() {

		return "mypage/main";
	}



}
