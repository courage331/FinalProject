package com.lec.gazua.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/shop")
public class ShopController {

	@RequestMapping(value = "/shoppinglist")  
	public String writeBoard() {      
		return "shop/shoppinglist";
	}
}