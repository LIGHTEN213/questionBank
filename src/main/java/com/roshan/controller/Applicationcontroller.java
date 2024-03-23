package com.roshan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Applicationcontroller {

	
	@GetMapping("/")
	public String Welcome() {
		return "welcomepage";
	}
		
		
		
	}
	
		

