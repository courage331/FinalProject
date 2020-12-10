package com.lec.gazua.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/shop")
public class ShopController {

	@RequestMapping(value = "/shoppinglist")  
	public String writeBoard() {      
		return "shop/shoppinglist";
	}
	
	@RequestMapping(value = "/upload")
	public ModelAndView upload(@RequestParam(value = "file1", required = false) MultipartFile mf,
			HttpServletRequest request) {

		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "resources/Image/";
		
		
		ModelAndView mv = new ModelAndView("/shop/upload");
		String originalFileName = mf.getOriginalFilename();
		long fileSize = mf.getSize();
		String safeFile = root_path + attach_path + originalFileName;
		System.out.println(safeFile);

		try {
			mf.transferTo(new File(safeFile));

		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return mv;
	}
}