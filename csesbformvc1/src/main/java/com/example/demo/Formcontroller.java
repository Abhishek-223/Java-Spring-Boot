package com.example.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Formcontroller {
	
	@RequestMapping("/form")
	public String disp() {
		return "form";
	}
	
	@RequestMapping("/register")
	public String FormData(@ModelAttribute("data") Details data) {
		return "Success";
	}
	
	public ModelandandView View() {
		
	}
}
