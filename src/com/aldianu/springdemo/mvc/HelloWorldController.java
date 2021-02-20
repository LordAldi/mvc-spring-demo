package com.aldianu.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	// controller method to  show the initial form
	@RequestMapping("/showForm")
	public String showForm() {
		return "helloWorld-from";
	}
	
	//controller method to proccess the form
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloWorld";
	}
	
	//controller method to read form data and add data to the model
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {
		//read the request parameter from the html form
		String theName = request.getParameter("studentName");
		//convert to all upper case
		theName=theName.toUpperCase();
		//create message
		String result = "YO!! "+theName;
		
		//add message to the model
		model.addAttribute("message", result);
		return "helloWorld";
	}
	
	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree( @RequestParam("studentName") String theName, Model model) {
		
		//convert to all upper case
		theName=theName.toUpperCase();
		//create message
		String result = "Yuhuuuu yeeaahhh!! "+theName;
		
		//add message to the model
		model.addAttribute("message", result);
		return "helloWorld";
	}
}
