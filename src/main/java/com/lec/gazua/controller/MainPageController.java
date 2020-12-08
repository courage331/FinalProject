package com.lec.gazua.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hoin")
public class MainPageController {
	
	@RequestMapping("/hoin")
	public String main() {
		return "hoin/hoin";
	}
	
}
