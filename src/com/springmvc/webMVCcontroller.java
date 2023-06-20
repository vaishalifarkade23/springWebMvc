package com.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class webMVCcontroller 
{
     @RequestMapping("/hello")  ///hello url should not repeated
	public String getModel()
	{
    	 return "show";
	}
     
     @RequestMapping("/hi")
     public String getModel1()
     {
    	 return "view";
     }

}
