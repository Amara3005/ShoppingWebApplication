package com.ShopTry.ShoppingWebApplication;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;

@Entity(name="orders")
public class Orders {

	@Id
	private long id;
	@OneToOne
	private Product product;
	private int qntyNeed;
	private String adrs;
}
