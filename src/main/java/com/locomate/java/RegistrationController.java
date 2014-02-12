package com.locomate.java;

import java.sql.Connection;
import java.util.DuplicateFormatFlagsException;

import javax.validation.Valid;

import org.springframework.dao.DuplicateKeyException;
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
	
	
	private RegistrationProxy registerproxy;
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
	public String submitRegisterForm(@Valid RegistrationPO registrationPO ,BindingResult result,
			@ModelAttribute ("registermap")RegistrationPO register
			) throws IOException{
		if(result.hasErrors()){
		System.out.println("Name:" + register.getFirstName());
        System.out.println("Email:" + register.getEmail());
        register.setUserName(register.getUserName());
        register.setPassword(register.getPassword());
		register.setFirstName(register.getFirstName());
		register.setLastName(register.getLastName());
	    register.setMobileNumber(register.getMobileNumber());
		register.setEmail(register.getEmail());
		
		register.setOccupation(register.getOccupation());
		return "register";
		}
        try {
        	registerproxy.registerNewUser(register);
           } catch(Exception e) {
            e.printStackTrace();
        }
         
        return "success";
	}
	
	
}