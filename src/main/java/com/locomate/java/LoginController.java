package com.locomate.java;

	



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.locomate.java.beans.RegistrationPO;
import com.locomate.java.hibernate.User;
import com.locomate.java.proxy.LoginProxy;
import com.locomate.java.proxy.RegistrationProxy;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

	@Controller
	
	public class LoginController {
	
		private LoginProxy loinproxy;
		@RequestMapping("/loginform")
		public String showForm(Map<String, Object> map) {
			
		/*UserPO userpo=new UserPO();
		model.addAttribute(userpo);
			return "Login";*/
			 try {
		         map.put("usermap", new User());
		        /* map.put("registerList", loginproxy.list());*/
		     }catch(Exception e) {
		         e.printStackTrace();
		     }
			return "Login";
		}
	 
		
		@RequestMapping(value="/submitLogin")
		public String list(@Valid User user,BindingResult result,Model model,
				@ModelAttribute ("usermap")User login)throws IOException {
	
			if(result.hasErrors()){
			
			return "Login";
			}
	        try {
	        	System.out.println("username===="+login.getLoginuserName());
	        	System.out.println("username===="+login.getUserPassword());
	        	loinproxy.saveUser(login);
	           } catch(Exception e) {
	            e.printStackTrace();
	           }
			return "success";
	        }
	 
		
	 
		@RequestMapping(value="/logout", method = RequestMethod.GET)
		public String logout(ModelMap model) {
	 
			return "login";
	 
		}
	 

}