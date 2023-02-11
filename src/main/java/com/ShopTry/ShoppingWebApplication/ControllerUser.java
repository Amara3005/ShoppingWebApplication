package com.ShopTry.ShoppingWebApplication;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	
	@GetMapping("/BuyPrdt/{id}")
	public String productBuy(@PathVariable int id,Model mod) {
		Product prdt = data.getProduct(id);
		mod.addAttribute("prdt", prdt);
		return "BuyDetails";
	}
	
	@PostMapping("/BuyPrdt/{id}")
	public String prodtBuy(@PathVariable int id, @RequestParam int need,String address,Model mod) {

		Product prdt = data.getProduct(id);
		int total=need*prdt.getCost();
		prdt.setQnty(prdt.getQnty()-need);
		data.editProduct(prdt);
		
		long unqid=Long.valueOf(getUniqueString());
		Product prdt2 = data.getProduct(id);
		orddata.addOrder(new Orders(unqid,prdt2,need,address));
		
		mod.addAttribute("total", total);
		mod.addAttribute("orderid", unqid);
		
		return "BuyEnd";
	}
	
	public  String getUniqueString()
	{   
	        Date dNow = new Date();
	        SimpleDateFormat ft = new SimpleDateFormat("yyMMddHHmmss");
	        String datetime = ft.format(dNow);
	        return datetime;

	}
}
