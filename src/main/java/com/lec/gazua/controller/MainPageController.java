package com.lec.gazua.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/index")
public class MainPageController {
	
	@RequestMapping("/index")
	public String main() {
		return "index/index";
	}
    
    /**
     * Tiles를 사용(header, left, footer 포함)
     */        
    @RequestMapping("/test")
    public String testPage() {
        return "index.page"; // body가 들어갈 jsp파일명과 .page로 처리해줘야함 
    }
    
	
}
