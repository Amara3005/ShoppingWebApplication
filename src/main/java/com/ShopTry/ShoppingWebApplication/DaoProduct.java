package com.ShopTry.ShoppingWebApplication;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;


@Repository
@Transactional
public class DaoProduct {

	@PersistenceContext
	EntityManager enty;
	
	public void addNewProduct(Product prdt) {
		enty.persist(prdt);
	}
	
	public Product getProduct(int id) {
		return enty.find(Product.class, id);
	}
}
