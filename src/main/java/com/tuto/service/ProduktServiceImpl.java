package com.tuto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tuto.dao.EmployeeDao;
import com.tuto.dao.ProduktDao;
import com.tuto.model.Produkt;

@Service
@Transactional
public class ProduktServiceImpl implements ProduktService{

	@Autowired
    private ProduktDao produktDao;

	@Transactional
	public List<Produkt> getAllProdukts() {
		return produktDao.getAllProdukts();
	}
	
}
