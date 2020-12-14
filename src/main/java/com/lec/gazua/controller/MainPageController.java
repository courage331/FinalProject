package com.lec.gazua.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPageController {
	
	@RequestMapping("/body")
	public String main() {	
		return "index/body";
	}
    
    /**
     * Tiles를 사용(header, footer 포함)
     */        
    @RequestMapping("/index")
    public String testPage() {
        return "body.page"; // body가 들어갈 jsp파일명과 .page로 처리해줘야함 
    }				
    // 근데 return을 index.page로 해줬는데 왜 index/test로 나오는거지
    
    
	
}
