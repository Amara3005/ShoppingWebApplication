package com.ShopTry.ShoppingWebApplication;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity(name="product")
public class Product {

	 @Id
	 private int id;
     private String name;
     private String img;
     private int cost;
     private int qnty;
     
     public int getId() {
 		return id;
 	}
 	public void setId(int id) {
 		this.id = id;
 	}
 	public String getName() {
 		return name;
 	}
 	public void setName(String name) {
 		this.name = name;
 	}
 	public String getImg() {
 		return img;
 	}
 	public void setImg(String img) {
 		this.img = img;
 	}
 	public int getCost() {
 		return cost;
 	}
 	public void setCost(int cost) {
 		this.cost = cost;
 	}
 	public int getQnty() {
 		return qnty;
 	}
 	public void setQnty(int qnty) {
 		this.qnty = qnty;
 	}
 	public Product(int id, String name, String img, int cost, int qnty) {
 		this.id = id;
 		this.name = name;
 		this.img = img;
 		this.cost = cost;
 		this.qnty = qnty;
 	}
      
 	public Product () {
 		
 	}
}
