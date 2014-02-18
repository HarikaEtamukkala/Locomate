package com.locomate.java.controller;

	



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.locomate.java.beans.RegistrationPO;
import com.locomate.java.proxy.LoginProxy;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

	@Controller	
	public class LoginController {
		@Autowired
		private LoginProxy loginproxy;
	 
		
		@RequestMapping("/loginform")
		public String showForm(Map<String, Object> map) {
			
		
			 try {
		         map.put("usermap", new RegistrationPO());
		         map.put("loginLst", loginproxy.list());
		     }catch(Exception e) {
		         e.printStackTrace();
		     }
			return "Login";
		}
	 
			
		@RequestMapping(value="/submitLogin")
		public String list(@Valid  RegistrationPO userLogin,BindingResult result,Model model
				)throws IOException, IllegalArgumentException {
	
			if(result.hasErrors()){
		model.addAttribute(userLogin);   
		
		return "Login";
		}
       
            List<RegistrationPO> userFrmService=loginproxy.list();
            
            String usrName=userLogin.getUserName();
            String pswd=userLogin.getPassword();
            System.out.println("---------"+userFrmService.get(1).getUserName());
for(int i=0;i<=userFrmService.size();i++){  
	
            
            if(userFrmService.get(i).getUserName().equals(usrName) &&
            		userFrmService.get(i).getPassword().equals(pswd)){  
            	model.addAttribute("user",userLogin);
            	return "success";
            }
}
            
                throw new IllegalArgumentException("username "+usrName+"not found or password"+pswd+"not found");
                
                  
}
            	
            
           
         
	        
	 
		
	 
		@RequestMapping(value="/logout", method = RequestMethod.GET)
		public String logout() {
	 
			return "home";
	 
		}
	 

}
