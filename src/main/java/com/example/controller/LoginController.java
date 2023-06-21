package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
	public LoginController() {
		System.out.println("LoginController()...");
	}
	
	@GetMapping("/login")
	void login() {
		System.out.println("login()...");
	}
	
	@PostMapping("/loginFail")
	void loginFail() {
		System.out.println("loginFail()...");
	}
	
	@GetMapping("/board")
	void board() {
		
	}
	
	
}
