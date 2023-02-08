package com.ShopTry.ShoppingWebApplication;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ControllerUser {

	@Autowired
	DaoProduct data;
	
	@Autowired
	DaoOrder orddata;
	
	@GetMapping("/products")
	public String productsAll(Model mod) {
		List<Product> list = data.allProducts();
		mod.addAttribute("list", list);
		return "UserHt";
	}
}
