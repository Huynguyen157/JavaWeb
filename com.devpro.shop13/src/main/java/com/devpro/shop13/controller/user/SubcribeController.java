package com.devpro.shop13.controller.user;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop13.dto.Contact;
import com.devpro.shop13.dto.Subcribe;

import com.devpro.shop13.entities.RolesEntity;
import com.devpro.shop13.entities.UsersEntity;
import com.devpro.shop13.services.RoleService;
import com.devpro.shop13.services.UserService;

@Controller
public class SubcribeController  {

	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	 @RequestMapping(value= {"/Subcribe"}, method=RequestMethod.GET)
    public String subcribe(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws Exception
    {
		 model.addAttribute("roles", roleService.findAll());
		model.addAttribute("usersEntity", new UsersEntity());
      return"user/Subcribe";

    }
//	 @RequestMapping(value= {"/subcribe-ajax"}, method=RequestMethod.POST)
//	 public ResponseEntity<Map<String,Object>> subcribeAjax(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,@RequestBody Subcribe subcribe) throws IOException
//     {
//   	 
//       System.out.println("subcribe[FullName]:"+subcribe.getFullName());
//       subcribe.setFullName("");
//       System.out.println("subcribe[Email]:"+subcribe.getEmail());
//       subcribe.setEmail("");
//       System.out.println("subcribe[Password]:"+subcribe.getPassword());
//       subcribe.setPassword("");
//       System.out.println("subcribe[Mobile]:"+subcribe.getMobile());
//       subcribe.setMobile("");
//       Map<String,Object> result= new HashMap<String,Object>();
//       result.put("code",200);
//       result.put("status", "Thành công");
//       return ResponseEntity.ok(result);
//     }
	 @RequestMapping(value = { "/Subcribe" }, method = RequestMethod.POST)
		public String subcribe_Post(final ModelMap model, final HttpServletRequest request,
				final HttpServletResponse response) throws Exception {
			String username = request.getParameter("username");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			String repassword = request.getParameter("repassword");

			if (username.trim().equals("")) {
				model.addAttribute("error", "Username không được để trống!");
				return "/Subcribe";
			}

			RolesEntity roles = roleService.getRoleByname("ADMIN");

			UsersEntity user = new UsersEntity();
			
			user.setUsername(username);
			user.setEmail(email);
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(4);
			user.setPassword(encoder.encode(password));

			user.addRoles(roles);

			userService.saveOrUpdate(user);

			return "redirect:/Subcribe";
		}
	//////////////////////////DELETE
		@RequestMapping(value = { "/Subcribe/delete-user" }, method = RequestMethod.POST)
		public ResponseEntity<Map<String, Object>> deleteUser_Ajax(final ModelMap model,
				final HttpServletRequest request, final HttpServletResponse response) {

			Map<String, Object> jsonResult = new HashMap<String, Object>();

			try {
				int userId = Integer.parseInt(request.getParameter("userId"));
				UsersEntity u = userService.getById(userId);
				u.setStatus(Boolean.FALSE);
				userService.saveOrUpdate(u);
				jsonResult.put("code", 200);
				jsonResult.put("status", "TC");

			} catch (Exception e) {
				jsonResult.put("code", 500);
				jsonResult.put("message", e.getMessage());
			}

			return ResponseEntity.ok(jsonResult);
		}
}
