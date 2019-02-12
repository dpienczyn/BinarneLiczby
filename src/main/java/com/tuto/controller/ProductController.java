package com.tuto.controller;

import java.io.IOException;
import java.util.List;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.tuto.model.Produkt;
import com.tuto.service.ProduktService;

@Controller
public class ProductController {

	private static final Logger logger = Logger
            .getLogger(ProductController.class);
	
	public ProductController() {
        System.out.println("ProductController()");
    }
	
	@Autowired
	private ProduktService produktService;
	
	@RequestMapping(value = "/produkt", method = RequestMethod.GET)
    public ModelAndView listProdukt(ModelAndView model) throws IOException {
        List<Produkt> listProdukt = produktService.getAllProdukts();
        model.addObject("listProdukt", listProdukt);
        model.setViewName("produkt");
        return model;
    }
}
