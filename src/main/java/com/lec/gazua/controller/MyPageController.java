package com.lec.gazua.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/mypage")
public class MyPageController {

	@RequestMapping(value = "/")
	public String mypage() {

		return "mypage/main";
	}



}
