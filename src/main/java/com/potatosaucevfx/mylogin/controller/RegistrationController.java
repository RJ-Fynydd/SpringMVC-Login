package com.potatosaucevfx.mylogin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.potatosaucevfx.mylogin.user.User;
import com.potatosaucevfx.mylogin.user.UserDAOImpl;

@Controller
public class RegistrationController {

	
	@Autowired
	public UserDAOImpl userDao;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("register");
		mav.addObject("user", new User());
		return mav;
	}
	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	public ModelAndView addUser(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("user") User user) {
		System.out.println("Processing Registration");
		if(user.getUsername().equals("") || user.getUsername().equals(null) || user.getPassword().equals("") || user.getPassword().equals(null)) {
			ModelAndView mav = new ModelAndView("register");
			mav.addObject("user", new User());
			mav.addObject("message", "The request you have made has errored successfully.");
			return mav;
		} else {
			userDao.register(user);
			return new ModelAndView("welcome", "name", (user.getFirstName().equals("") || 
					user.getFirstName().equals(null) ? user.getUsername() : user.getFirstName()));
		
		}
		
		
	}

}
