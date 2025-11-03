package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UsrArticleController {
	
	@GetMapping("usr/article/write")
	@ResponseBody
	public String write() {
		return "<div style='color:red'>안녕하세요</div>";
	}
	
}
