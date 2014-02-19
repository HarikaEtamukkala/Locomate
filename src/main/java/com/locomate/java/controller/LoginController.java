package com.locomate.java.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.locomate.java.beans.RegistrationPO;
import com.locomate.java.proxy.LoginProxy;
import com.locomate.java.validations.LoginPOValidator;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

@Controller
public class LoginController {
	@Autowired
	private LoginProxy loginproxy;
	@Autowired
	private RegistrationPO registrationPO;

	/*
	 * @Autowired private MessageHandler messageHandler;
	 */

	@RequestMapping("/loginform")
	public String showForm(Map<String, Object> map) {

		try {
			map.put("usermap", new RegistrationPO());
			map.put("loginLst", loginproxy.list());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "Login";
	}

	@RequestMapping(value = "/submitLogin")
	public String list(@Valid RegistrationPO userLogin, BindingResult result,
			Model model) throws IOException, IllegalArgumentException {
		if (result.hasErrors()) {
<<<<<<< HEAD
			/* messageHandler.addFieldMessages(result.getFieldErrors());*/
			model.addAttribute(userLogin);
=======
			/* messageHandler.addFieldMessages(result.getFieldErrors()); */
			model.addAttribute(registrationPO);
>>>>>>> 2d770f901575ccdd66dada33d5f548a32d0c419f
			return "Login";
		}
		String usrName = registrationPO.getUserName();
		String pswd = registrationPO.getPassword();
		Boolean Credentials = checkCredentials(usrName, pswd);
		List<RegistrationPO> userFrmService = loginproxy.list();
		if (Credentials) {
			for (int i = 0; i <= userFrmService.size(); i++) {
				if (userFrmService.get(i).getUserName().equals(usrName)
						&& userFrmService.get(i).getPassword().equals(pswd)) {
					model.addAttribute("user", registrationPO);
					return "success";
				}
			}
		}
		throw new IllegalArgumentException("username " + usrName + "not found or password" + pswd + "not found");
	}

	private boolean checkCredentials(String usrName, String pswd) {
		if (usrName != null && pswd != null) {
			return true;
		} else {
			return false;
		}
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {

		return "home";

	}

}
