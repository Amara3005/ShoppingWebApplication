package com.ShopTry.ShoppingWebApplication;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.shoppingCart.ShopTry.Orders;
import com.shoppingCart.ShopTry.Product;


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
	
	@GetMapping(value="admin/newProduct")
	public String newProduct() {
		return "newProdHt";
	}
	
	
	@PostMapping(value="/newProduct")
	public String newProductAdd(@ModelAttribute Product product,Model mod) {
		Product prdt=data.getProduct(product.getId());
		if(prdt==null) {
			data.addNewProduct(product);
			mod.addAttribute("message","Product ("+product.getName()+") added succesfully");
			return "AdminHt";
		}
		else {
			mod.addAttribute("message","*"+prdt.getName()+" with same id already exist");
		return "newProdHt";
		}
	}
	
	@GetMapping(value="admin/editView")
	public String editview(Model mod) {
		
		List<Product> list=data.allProducts();
		mod.addAttribute("listprd", list);
		return "edit1Ht";
	}
	
	@GetMapping(value="/edit/{id}")
	public String editGet(@PathVariable int id,Model mod) {
		
		Product prd = data.getProduct(id);
		mod.addAttribute("prd", prd);
		return "editPrdct";
	}
	 
	@PostMapping(value="/edit")
	public String editGet(@ModelAttribute Product product,Model mod) {
		
		data.editProduct(product);
		return "redirect:admin/editView";
	}
	
	@GetMapping(value="/orders")
	public String viewOrders(Model mod) {
		
		List<Orders> list=ordr.allOrders();
		int k=list.size();
		mod.addAttribute("num", k);
		mod.addAttribute("list", list);
		return "AllOrders";
	}
    
	@GetMapping(value="/orders/{id}")
	public String deleteOrder(@PathVariable long id) {
		
		ordr.removeOrder(id);
		return "redirect:/orders";
		
	}
}
