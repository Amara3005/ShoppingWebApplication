package com.ShopTry.ShoppingWebApplication;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ControllerHome {


	@GetMapping(value={"/login","/"})
	public String home() {
		return "HomeHt";
	}
	
	@PostMapping(value="/login")
	public String homeCheck(@RequestParam String user, String Pass, Model mod) {
		
		if(user.equals("admin") && Pass.equals("password")) {
			return "redirect:/admin";
		}
		else if (user.equals("user") && Pass.equals("pass")) {
			return "redirect:/products";
		}
		else {
			mod.addAttribute("message","Wrong User id or Password");
			return "HomeHt";
		}
		
	}
	
	@GetMapping(value="/about")
	public String description() {
		return "AboutHt";
	}
}
