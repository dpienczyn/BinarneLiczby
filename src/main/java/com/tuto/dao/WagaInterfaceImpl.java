package com.tuto.dao;

import com.tuto.model.Waga;

public class WagaInterfaceImpl implements WagaDao{

	@Override
	public void oblicz() {
		Waga waga = new Waga();
		float wynik = waga.getKg()/waga.getCm()*waga.getCm();
		System.out.println("Wynik: "+wynik);
		
	}

}
