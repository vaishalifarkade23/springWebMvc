package com.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ModelInterfaceController
{
	@RequestMapping("/modelinterface")
	public String getData(Model model)
	{
		
		//to bind object
		model.addAttribute("msg", "Welcome to spring");
		model.addAttribute("msg1", "<script>alert('welcome to hs')</script>");
		return "view3";
	}
	
	
}
