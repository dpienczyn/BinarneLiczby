package com.tuto.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.tuto.model.Waga;

@Controller
public class WagaController {
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView oblicz(ModelAndView model) {
        Waga waga = new Waga();
        model.addObject("waga", waga);
        model.setViewName("index");
        return model;
    }
	
	@RequestMapping(value="/bmi",  method = RequestMethod.GET)
    public ModelAndView calculateBmi(@ModelAttribute("bmi") Waga vbmi ){
		double result;
        ModelAndView mv = new ModelAndView();
        System.out.println("wzrost:" + vbmi.getCm() + " waga: " + vbmi.getKg());
        result = vbmi.getKg() / (vbmi.getCm()*vbmi.getCm());
        result *=100;
        result = Math.round(result);
        result /= 100;
        if(result<=18){
        	mv.addObject("r", "Niedowaga");
        }else if(result>18&&result<25){
        	mv.addObject("r", "Waga prawidlowa");
        }else if(result>25&&result<30){
        	mv.addObject("r", "Nadwaga");
        }
        mv.addObject("result",result);
        mv.addObject("height",vbmi.getKg());
        mv.addObject("weight",vbmi.getCm());
 
        return mv;
    }
}
