package com.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PathVariableController
{
	@RequestMapping("{country}/{state}/{city}")
	//to bind string type value
	public String getData(Model model, @PathVariable("country") String countryname, @PathVariable ("state") String statename, @PathVariable("city") String cityname)
	//public String getData(Model model, @PathVariable String country, @PathVariable String state, @PathVariable String city)
	{
		//@pathvariable is use to bind value on url
		model.addAttribute("msg", "country name=" +countryname);
		model.addAttribute("msg1", "state name=" +statename);
		model.addAttribute("msg2", "city name=" +cityname);
		return "view4";
	}
	
	//bind integer type value
	@RequestMapping("edit/{id}")
	 public String getData1(Model model1,@PathVariable int id)
	 {
		model1.addAttribute("msg3", "Binding integer value=" +id);
		return "view4";
	 }

}
