package com.devpro.shop13.controller.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop13.controller.user.BaseController;
import com.devpro.shop13.entities.UsersEntity;

@Controller
public class AdminSecureController extends BaseController  {

//	@Autowired
//	UserRepo userRepo;

	@RequestMapping(value = { "/loginAdmin" }, method = RequestMethod.GET)
	public String login(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		return "loginAdmin";
	}
//
//	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
//	public String register(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
//			throws IOException {
//		return "back-end/register";
//	}
//
//	@RequestMapping(value = { "/register" }, method = RequestMethod.POST)
//	public String addProduct_Post(final ModelMap model, final HttpServletRequest request,
//			final HttpServletResponse response) throws Exception {
//		String username = request.getParameter("username");
//		String email = request.getParameter("email");
//		String password = request.getParameter("password");
//		String repassword = request.getParameter("repassword");
//
//		UsersEntity user = new UsersEntity();
//		user.setUsername(username);
//		user.setEmail(email);
//		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(4);
//		user.setPassword(encoder.encode(password));
//
//		userRepo.save(user);
//		
//		return "redirect:/login";
//	}

}
