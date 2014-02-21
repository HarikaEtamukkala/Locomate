package com.locomate.java.controller;


import java.io.IOException;
import java.util.Calendar;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.locomate.java.beans.RegistrationPO;
import com.locomate.java.proxy.RegistrationProxy;

@Controller
public class RegistrationController {
	
	
	@Autowired
	private RegistrationProxy registerproxy;
	
	@Autowired
	private RegistrationPO registrationPO;
	
	@RequestMapping("/register")
	public String redirectToRegisterPage(Map<String, Object> map,Model model,@ModelAttribute("registerpo") RegistrationPO register){
		 try {
	         map.put("registermap", new RegistrationPO());
	         map.put("registerList", registerproxy.list());		
	 		 model.addAttribute("year", Calendar.getInstance().get(Calendar.YEAR));		
	     }catch(Exception e) {
	         e.printStackTrace();
	     }
		return "register";
	}
	
	@RequestMapping("/submitForm")
	public String submitRegisterForm(@Valid RegistrationPO validRegistrationPO ,BindingResult result,
			Model model,@ModelAttribute("registerpo") RegistrationPO register	) throws IOException{
		if(result.hasErrors()){		
			model.addAttribute("flag", "Registration Failed!");
			return "register";
		}
        try {
        	registerproxy.registerNewUser(register);
        	model.addAttribute("flag", "fromregistration");
       } catch(Exception e) {
            e.printStackTrace();
       }        
       return "redirect:loginform";
	}
	
	
}
