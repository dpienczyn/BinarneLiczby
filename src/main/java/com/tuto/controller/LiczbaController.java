package com.tuto.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tuto.model.Liczba;

@Controller
public class LiczbaController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView oblicz(ModelAndView model) {
        Liczba liczba = new Liczba();
        model.addObject("liczba", liczba);
        model.setViewName("number");
        return model;
    }
	
	
	@RequestMapping(value="/number",  method = RequestMethod.POST)
    public ModelAndView calculateBmi(@ModelAttribute("number") Liczba licz ){
		String str1;
		String str2;
        ModelAndView mv = new ModelAndView();
        if("Bin".equals(licz.getSex())){
        System.out.println("liczba:" + licz.getLiczba());
        str1 = Integer.toBinaryString(licz.getLiczba());
        System.out.printf("%d= %s \n", licz.getLiczba(), str1);
        }else if("Osm".equals(licz.getSex())){
        System.out.println("liczba:" + licz.getLiczba());
        str1 = Integer.toOctalString(licz.getLiczba());
        System.out.printf("%d= %s \n", licz.getLiczba(), str1);
		}else{
        System.out.println("Liczba: "+licz.getLiczba());
        str1 = Integer.toHexString(licz.getLiczba());
        System.out.printf("%d= %s \n", licz.getLiczba(), str1);
        }
        mv.addObject("str1",str1);
        mv.addObject("str",licz.getSex());
        mv.addObject("liczba",licz.getLiczba());
       
 
        return mv;
    }
}


