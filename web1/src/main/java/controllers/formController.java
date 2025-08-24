package controllers;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import jakarta.servlet.http.HttpServletRequest;
@Controller
public class formController {
	@RequestMapping("/form")
  public String showForm() {
      return "createForm"; 
  }
  @PostMapping("/form")
  public String handleForm(HttpServletRequest request, Model model){
	  String name = request.getParameter("name");
	  String rollNo = request.getParameter("roll");
	  String branch = request.getParameter("branch");
	  String gender = request.getParameter("gender");
	  String college = request.getParameter("college");
	  String city = request.getParameter("city");
	  
	  model.addAttribute("name", name);
      model.addAttribute("roll", rollNo);
      model.addAttribute("branch", branch);
      model.addAttribute("gender", gender);
      model.addAttribute("college", college);
      model.addAttribute("city", city);
      
      return "result";
  }
}
