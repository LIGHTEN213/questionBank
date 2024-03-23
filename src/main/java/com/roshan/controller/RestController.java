package com.roshan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.roshan.model.User;
import com.roshan.services.UserService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class RestController {

	@Autowired
	private UserService userService;

	@GetMapping("/register") // vere link il pokan(url mapping)
	public String registerPage(Model model, HttpSession session) {

		User user = (User) session.getAttribute("user");// session is a ministorage in web

		if (user == null) {

			model.addAttribute("User", new User());
			return "register";

		} else {

			return "redirect:/";
		}

	}

	@GetMapping("/userlogin")
	public String loginPage(Model model, HttpSession session) {

		User user = (User) session.getAttribute("user");

		if (user == null) {

			model.addAttribute("user", new User());

			return "userlogin";

		} else {

			return "redirect:/";
		}

	}

	@PostMapping("/userlogin") // specific data ne hide cheyth backend il use cheyyan
	public String loginCheck(Model model, @ModelAttribute("user") User u, @RequestParam("email") String email,
			@RequestParam("password") String password, HttpServletRequest request) {

		User user = userService.getByEmailAndPassword(email, password);
		
		model.addAttribute("user", user);

		if (user != null) {

			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			if (user.getUsertype().equals("user")) 
			{
				return "redirect:/";
			} 
			else if (user.getUsertype().equals("admin")) 
			{
				return "redirect:/admin";
			}

		} 
		else 
		{

			model.addAttribute("message", "Invalid Username or password");
			return "userlogin";
		}
		return null;

	}

	@PostMapping("/register")
	public String saveRegistration(@ModelAttribute("user") User u, Model model) {

		try {

			boolean userExists = false; // Assuming this is the condition to check if the user already exists

			if (userExists) {
				model.addAttribute("errorMessage", "User with this email address already exists! Try another email.");
				return "register"; // Return the register page with an error message
			} else {
				User user = userService.saveUserData(u);
				System.out.println("user" + user);
				if (user != null) {
					return "redirect:/userlogin"; // Redirect to userlogin page upon successful registration
				} else {
					return "register"; // Return the register page if user creation fails
				}
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return "redirect:/register";
	}

	@GetMapping(value = "/logout")
	public String Logout(HttpServletRequest request) {

		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/";

	}

	@GetMapping(value = "/admin")
	public String loadAdmin() {
		return "adminhome";

	}

}
