package com.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MvcGFormController
{
	@RequestMapping("/mvcform1")
	public String getForm(Model model)
	{
		RegMvcFormModel reg = new RegMvcFormModel();
		model.addAttribute("command", reg);
		return "MVCForm";
	}
	
	//one way binding
	/*@RequestMapping(value="/save4", method=RequestMethod.POST)
	public String save(@ModelAttribute("reg") RegMvcFormModel reg,Model model)
	{
		return "view10";
	}*/
	
	@RequestMapping(value="/save4", method=RequestMethod.POST)
	public String save(@ModelAttribute("reg") RegMvcFormModel reg,Model model)
	{
		model.addAttribute("command", reg);
		return "view10";
	}

}
