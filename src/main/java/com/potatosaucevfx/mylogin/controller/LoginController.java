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

import com.potatosaucevfx.mylogin.user.Login;
import com.potatosaucevfx.mylogin.user.User;
import com.potatosaucevfx.mylogin.user.UserDAOImpl;

@Controller
public class LoginController {
	
	// TODO: Proper password encryption storage.
	// TODO: CSS For login pages.
	// TODO: Add more data.


	@Autowired
	UserDAOImpl userDao;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("login");
		mav.addObject("login", new Login());
		return mav;
	}
	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") Login login) {
		ModelAndView mav = null;
		User user = userDao.validateUser(login);
		if (user != null) {
			mav = new ModelAndView("welcome");
			mav.addObject("name", (user.getFirstName().equals("") || user.getFirstName().equals(null) ? user.getUsername() : user.getFirstName()));
			mav.addObject("lastName", user.getLastName());
			mav.addObject("email", user.getEmail());
			mav.addObject("phoneNumber", user.getPhoneNumber());
		} else {
			mav = new ModelAndView("login");
			mav.addObject("message", "Username or Password is wrong!!");
		}
		return mav;
	}

}
