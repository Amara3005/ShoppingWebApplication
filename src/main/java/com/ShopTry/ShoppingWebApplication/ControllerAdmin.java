package com.ShopTry.ShoppingWebApplication;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ControllerAdmin {

	@Autowired
	DaoProduct data;
	@Autowired
	DaoOrder ordr;
	
	@GetMapping(value="/admin")
	public String adminPage() {
		return "AdminHt";
	}
}
