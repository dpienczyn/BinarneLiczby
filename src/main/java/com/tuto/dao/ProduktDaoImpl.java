package com.tuto.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.tuto.model.Produkt;

@Repository
public class ProduktDaoImpl implements ProduktDao{
	
	@Autowired
    private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	public List<Produkt> getAllProdukts() {
		return sessionFactory.getCurrentSession().createQuery("from Produkt")
                .list();
	}

}
