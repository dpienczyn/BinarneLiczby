package com.tuto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class KontaktController {

	@RequestMapping(value = { "/kontakt"})
    public String HomePage(ModelAndView model) {
        return "contact";
    }
}
