package com.ShopTry.ShoppingWebApplication;

import java.util.List;

import org.hibernate.query.Query;
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
	
	public void editProduct(Product prdt) {
		//Product prd= getProduct(prdt.getId());
	    enty.merge(prdt);
	}
	
	public void deleteProd (int id) {
		Product prdt=getProduct(id);
		enty.detach(prdt);
	}
	
	public List<Product> allProducts(){
		Query qr=(Query) enty.createQuery("select p from product p order by id asc");
		return qr.getResultList();
	}
}
