package com.ShopTry.ShoppingWebApplication;


import java.util.List;
import org.hibernate.query.Query;
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
	
	@SuppressWarnings("unchecked")
	public List<Orders> allOrders(){
		String str="select s from orders s order by id asc ";
		Query qr=(Query) enty.createQuery(str);
		return  qr.getResultList();
	}
	
	public void removeOrder(long id) {
		Orders odr=enty.find(Orders.class, id);
		enty.remove(odr);
	}
}
