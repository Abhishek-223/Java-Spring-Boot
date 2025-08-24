package controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CseStaff {
@RequestMapping("/csehod")
public String disp(Model model)
{
	model.addAttribute("hod", "Dr. GSn Murthy");
	model.addAttribute("top", "Dr. Murthy");
	model.addAttribute("coodr", "Murthy");
	model.addAttribute("email","jitendra@123gmial.com");
	model.addAttribute("password","123456");
	return "csestaff";
}
}