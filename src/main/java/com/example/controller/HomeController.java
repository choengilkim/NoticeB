package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller //new 해줌 controller는 겟매핑해줄수있음
public class HomeController {
	
	@GetMapping("/") // "/"로 끝나면 홈으로 자동 맵핑
	String home() {
		System.out.println("home()...");
		
		return "home";
	}
	
	
}
