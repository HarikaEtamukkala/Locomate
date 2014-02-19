package com.locomate.java.controller;


import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.request.WebRequest;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Map;
 




import javax.servlet.http.HttpServletResponse;
 

 




import org.apache.commons.io.IOUtils;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.locomate.java.beans.RegistrationPO;
import com.locomate.java.proxy.Impl.RegistrationProxyImpl;
import com.locomate.java.proxy.RegistrationProxy;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.Map;

@Controller
public class RegistrationController {
	
	
	@Autowired
	private RegistrationProxy registerproxy;
	@Autowired
	private RegistrationPO registrationPO;
	@RequestMapping("/register")
	public String redirectToRegisterPage(Map<String, Object> map){
		 try {
	         map.put("registermap", new RegistrationPO());
	         map.put("registerList", registerproxy.list());
	     }catch(Exception e) {
	         e.printStackTrace();
	     }
		return "register";
	}
	


 
	@RequestMapping("/submitForm")
	public String submitRegisterForm(@Valid RegistrationPO validRegistrationPO ,BindingResult result,
			Model model
			
			) throws IOException{
		if(result.hasErrors()){
		
		return "register";
		}
        try {
        	System.out.println("Name:" + registrationPO.getFirstName());
            System.out.println("Email:" + registrationPO.getEmail());
            registrationPO.setUserName(registrationPO.getUserName());
            registrationPO.setPassword(registrationPO.getPassword());
            registrationPO.setFirstName(registrationPO.getFirstName());
            registrationPO.setLastName(registrationPO.getLastName());
            registrationPO.setMobileNumber(registrationPO.getMobileNumber());
            registrationPO.setEmail(registrationPO.getEmail());
    		
            registrationPO.setOccupation(registrationPO.getOccupation());
        	registerproxy.registerNewUser(registrationPO);
        	model.addAttribute("flag", "fromregistration");
           } catch(Exception e) {
            e.printStackTrace();
        }
         
        return "redirect:loginform";
	}
	
	
}
