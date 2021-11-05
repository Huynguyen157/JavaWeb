package com.devpro.shop13.controller.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop13.controller.user.BaseController;
import com.devpro.shop13.entities.ProductEntity;
import com.devpro.shop13.entities.UsersEntity;
import com.devpro.shop13.services.CategoriesService;
import com.devpro.shop13.services.ProductService;
import com.devpro.shop13.services.RoleService;
import com.devpro.shop13.services.UserService;

@Controller
public class AdminRegisterController extends BaseController {

	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;

	@RequestMapping(value = { "/admin/register" }, method = RequestMethod.GET)
	public String register_Get(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("users", new UsersEntity());

		model.addAttribute("roles", roleService.findAll());

		return "admin/register";

	}

	@RequestMapping(value = { "/admin/register" }, method = RequestMethod.POST)
	public String register_Post(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("users") UsersEntity users) throws Exception {
		// model.addAttribute("roleOfUser", roleService.findAll());
		userService.saveOrUpdate(users);
//		if (users.getId() != null && users.getId() > 0) {
//			userService.edit(users);
//		} else {
//			userService.save(users);
//		}
		return "redirect:/register";

	}

	@RequestMapping(value = { "/admin/list-user" }, method = RequestMethod.GET)
	public String listUsers(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("users", userService.findAll());
		return "admin/list-user";
	}

	// edit product
	@RequestMapping(value = { "/admin/edit-user" }, method = RequestMethod.GET)
	public String editUser_Get(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		int userId = Integer.parseInt(request.getParameter("id"));
		UsersEntity userEntity = userService.getById(userId);

		model.addAttribute("roles", roleService.findAll());
		model.addAttribute("users", userEntity);
		return "admin/register";
	}

	////////////////////////// DELETE
	@RequestMapping(value = { "/admin/delete-user" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteUser_Ajax(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {

		Map<String, Object> jsonResult = new HashMap<String, Object>();

		try {
			int userId = Integer.parseInt(request.getParameter("userId"));
			UsersEntity userEntity = userService.getById(userId);
			userEntity.setStatus(Boolean.FALSE);
			userService.saveOrUpdate(userEntity);
			jsonResult.put("code", 200);
			jsonResult.put("status", "TC");

		} catch (Exception e) {
			jsonResult.put("code", 500);
			jsonResult.put("message", e.getMessage());
		}

		return ResponseEntity.ok(jsonResult);
	}
}
