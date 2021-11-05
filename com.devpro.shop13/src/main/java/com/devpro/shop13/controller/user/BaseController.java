package com.devpro.shop13.controller.user;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.devpro.shop13.entities.CategoriesEntity;
import com.devpro.shop13.entities.UsersEntity;
import com.devpro.shop13.services.CategoriesService;

public abstract class BaseController {
	
	@Autowired
	private CategoriesService categoriesService;
	
	public int getCurrentPage(HttpServletRequest request)
	{
		try {
			return Integer.parseInt( request.getParameter("page"))-1;
		}catch (Exception e) {
			return -1;
		}
	}
	@ModelAttribute("isLogined")
	public boolean isLogined() {
		boolean isLogined = false;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails) {
			isLogined = true;
		}
		return isLogined;
	}

	@ModelAttribute("userLogined")
	public UsersEntity getUserLogined() {
		Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(userLogined != null && userLogined instanceof UserDetails)
			return (UsersEntity) userLogined;
		
		return null;
	}
	@ModelAttribute("menus")
	public String getCategories() {
		return this.buildMenu();
	}
	
	private String buildMenu() {
		StringBuilder menu = new StringBuilder();

		// danh sach menu cha
		List<CategoriesEntity> categories = categoriesService.getAllParents();
		
		for (CategoriesEntity c : categories) {
			menu.append("<li> <a href=\"/category/"+c.getSeo()+"\">" + c.getName() + "</a>");
			
			if (c.getChilds() != null && !c.getChilds().isEmpty()) {
				recursiveMenu(menu, c.getChilds());
			}
			
			menu.append("</li>");
		}

		return menu.toString();
	}
	
	private void recursiveMenu(StringBuilder menu, Set<CategoriesEntity> childs) {
		menu.append("<ul>");
		for (CategoriesEntity c : childs) {
			menu.append("<li> <a href=\"/category/"+c.getSeo()+"\">" + c.getName() + "</a>");
			if (c.getChilds() != null && !c.getChilds().isEmpty()) {
				recursiveMenu(menu, c.getChilds());
				menu.append("</li>");
			} else {
				menu.append("</li>");
			}
		}
		menu.append("</ul>");
	}
}
