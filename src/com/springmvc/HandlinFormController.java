package com.springmvc;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Request;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HandlinFormController
{
	
	// Handling form request through HttpServlet Request
	@RequestMapping("/formview")
	public String getForm()
	{
		return "viewForm";
	}
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String getProccess(HttpServletRequest req,HttpServletResponse res,Model model)
	{
		String fname= req.getParameter("fullname");
		String femail=req.getParameter("email");
		String fpass=req.getParameter("password");
		model.addAttribute("msg", "Full Name:"+fname+"\nEmail:"+femail+"\nPassword:"+fpass);
		return "view7";
	}
	
	//2  Handling form request using @RequestParam annotation
	@RequestMapping("/formview1")
	public String getForm1()
	{
		return "viewForm1";
	}
	@RequestMapping(value="/save1", method=RequestMethod.POST)
	public String getProceess1(@RequestParam("fullname") String fname,@RequestParam ("email") String femail, @RequestParam ("password") String fpass,Model model)
	{
		model.addAttribute("msg1","Full Name:"+fname+"\nEmail:"+femail+"\nPassword:"+fpass );
		return "view8";
	}
	
	@RequestMapping("/formview2")
	public String getForm2()
	{
		return "viewForm2";
	}
	
	@RequestMapping(value="/save2", method=RequestMethod.POST)
	public String getProcess2(@ModelAttribute("rm") FormModel rm )
	{
		return "view9";
	}
	

}
