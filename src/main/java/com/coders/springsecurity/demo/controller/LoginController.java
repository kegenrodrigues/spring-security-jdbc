package com.coders.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/showMyLoginPage")
	public String showLoginPage() {
		return "fancy-login";
	}
	
	@GetMapping("/denied-page")
	public String showDeniedPage() {
		return "denied-page";
	}
}
