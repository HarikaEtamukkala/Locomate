package com.locomate.java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class PostRideController {
	@RequestMapping("/displayPostRide")
	public String displayPostRide(){
		return "postRide";
	}

}
