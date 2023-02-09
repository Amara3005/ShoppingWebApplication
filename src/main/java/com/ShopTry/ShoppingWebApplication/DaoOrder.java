package com.ShopTry.ShoppingWebApplication;


import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;


@Repository
@Transactional
public class DaoOrder {

	@PersistenceContext
	EntityManager enty;
	
	public void addOrder(Orders ordr) {
		enty.persist(ordr);
	}
}
