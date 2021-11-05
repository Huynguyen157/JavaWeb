package com.devpro.shop13.controller.user;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop13.dto.Contact;
import com.devpro.shop13.entities.ContactEntity;
import com.devpro.shop13.entities.UsersEntity;
import com.devpro.shop13.services.ContactService;

@Controller
public class ContactController extends BaseController {

	@Autowired
	private ContactService contactService;

	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		model.addAttribute("contact", new Contact());

		return "user/contact";

	}

//	 @RequestMapping(value= {"/contact-normal"}, method=RequestMethod.POST)
//     public String contactNormal(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws IOException
//     {
//   	 
//       String fullName= request.getParameter("fullName");
//       System.out.println(fullName);
//       String email= request.getParameter("email");
//       System.out.println(email);
//       String telephone= request.getParameter("telephone");
//       System.out.println(telephone);
//       String address= request.getParameter("address");
//       System.out.println(address);
//       String comment= request.getParameter("comment");
//       System.out.println(comment);
//       return"user/contact";
//
//     }
//	 @RequestMapping(value= {"/contact-spring-form"}, method=RequestMethod.POST)
//     public String contactSpringForm(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,@ModelAttribute("contact") Contact contact) throws IOException
//     {
//   	 
//       System.out.println("Contact[FullName]:"+contact.getFullName());
//       contact.setFullName("");
//       System.out.println("Contact[Email]:"+contact.getEmail());
//       contact.setEmail("");
//       System.out.println("Contact[Telephone]:"+contact.getTelephone());
//       contact.setTelephone("");
//       System.out.println("Contact[Address]:"+contact.getAddress());
//       contact.setAddress("");
//       System.out.println("Contact[Comment]:"+contact.getComment());
//       contact.setComment("");
//       return"user/contact";
//
//     }
	@RequestMapping(value = { "/contact-ajax" }, method = RequestMethod.POST)
	public String contactAjax(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {

		String firstname = request.getParameter("firstName");
		String lastname = request.getParameter("lastName");
		String mail = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");

		ContactEntity contacts = new ContactEntity();

		contacts.setLast_name(lastname);
		contacts.setFirst_name(firstname);
		contacts.setEmail(mail);
		contacts.setRequest_type(subject);
		contacts.setMessage(message);

//			System.out.println(username);
		contactService.saveOrUpdate(contacts);

		return "user/contact";

	}

	@RequestMapping(value = { "/admin/list-contact" }, method = RequestMethod.GET)
	public String listContact(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("contact", contactService.findAll());
		return "admin/list-contact";
	}

//////////////////////////DELETE
	@RequestMapping(value = { "/contact/delete-contact" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteContact_Ajax(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) {

		Map<String, Object> jsonResult = new HashMap<String, Object>();

		try {
			int contactId = Integer.parseInt(request.getParameter("contactId"));
			ContactEntity c = contactService.getById(contactId);
			c.setStatus(Boolean.FALSE);
			contactService.saveOrUpdate(c);
			jsonResult.put("code", 200);
			jsonResult.put("status", "TC");

		} catch (Exception e) {
			jsonResult.put("code", 500);
			jsonResult.put("message", e.getMessage());
		}

		return ResponseEntity.ok(jsonResult);
	}
}
