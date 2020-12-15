package com.lec.gazua.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.gazua.domain.WriteDTO;
import com.lec.gazua.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	private BoardService boardService;
	@Autowired
	public void setBoardService(BoardService boardService) {
		this.boardService = boardService;
	}

	@RequestMapping("/list.do")
	public String list(Model model) {
		model.addAttribute("list", boardService.list());
		return "board/list";  //  board/list.jsp
	}
	
	@RequestMapping("/write.do")
	public String write() {
		return "board/write";
	}
	
	@PostMapping("/writeOk.do")
	public String writeOk(WriteDTO dto, Model model) {
		model.addAttribute("result", boardService.write(dto));
		return "board/writeOk";
	}
	
	@RequestMapping("/view.do")
	public String view(int por_uid, Model model) {
		model.addAttribute("list", boardService.viewByUid(por_uid));
		return "board/view";
	}
	
	@GetMapping("/update.do")
	public String update(int por_uid, Model model) {
		model.addAttribute("list", boardService.selectByUid(por_uid));
		return "board/update";
	}
	
	@PostMapping("/updateOk.do")
	public String updateOk(WriteDTO dto, Model model) {
		model.addAttribute("result", boardService.update(dto));
		return "board/updateOk";
	}
	
	@RequestMapping("/deleteOk.do")
	public String deleteOk(int por_uid, Model model) {
		model.addAttribute("result", boardService.deleteByUid(por_uid));
		return "board/deleteOk";
	}
	
	
} // end controller