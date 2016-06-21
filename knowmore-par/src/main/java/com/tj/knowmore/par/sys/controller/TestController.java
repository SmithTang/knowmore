package com.tj.knowmore.par.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class TestController {

	@RequestMapping(method = RequestMethod.GET)
    public String index() {
        return "redirect:/index";
    }
	
	@RequestMapping(method = RequestMethod.GET, value = "/login")
	public String login() {
		return "login";
	}
	
}