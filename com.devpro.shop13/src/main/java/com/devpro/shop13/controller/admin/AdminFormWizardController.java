package com.devpro.shop13.controller.admin;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop13.controller.user.BaseController;
@Controller
public class AdminFormWizardController extends BaseController{
	@RequestMapping(value= {"/form-wizard"}, method=RequestMethod.GET)
    public String formWizard(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws IOException
    {
      return"admin/form-wizard";
//  	response.getWriter().write("<h1>Hello world</h1>");
    }
}
