package com.devpro.shop13.controller.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop13.controller.user.BaseController;
import com.devpro.shop13.dto.AddProduct;
import com.devpro.shop13.dto.Contact;
import com.devpro.shop13.dto.AddProduct;


@Controller
public class AdminController extends BaseController{
    
	@RequestMapping(value= {"/admin"}, method=RequestMethod.GET)
    public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws IOException
    {
      return"admin/index";

    }

	
//	 @RequestMapping(value= {"/add-product"}, method=RequestMethod.POST)
//     public ResponseEntity<Map<String,Object>> addProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,@RequestBody AddProduct addProduct) throws IOException
//     {
//   	 
//       System.out.println("AddProduct[ProID]:"+addProduct.getProID());
//       addProduct.setProID("");
//       System.out.println("AddProduct[ProName]:"+addProduct.getProName());
//       addProduct.setProName("");
//       System.out.println("AddProduct[Brand]:"+addProduct.getBrand());
//       addProduct.setBrand("");
//       System.out.println("AddProduct[Category]:"+addProduct.getCategory());
//       addProduct.setCategory("");
//       System.out.println("AddProduct[Description]:"+addProduct.getDescription());
//       addProduct.setDescription("");
//       Map<String,Object> result= new HashMap<String,Object>();
//       result.put("code",200);
//       result.put("status", "Thành công");
//       return ResponseEntity.ok(result);
//
//     }
	 
	 
	 //Thêm modelAttribute ở hàm GET
		/*
		 * @RequestMapping(value= {"/admin-spring-form"}, method=RequestMethod.POST)
		 * public String AddProductSpringForm(final ModelMap model, final
		 * HttpServletRequest request, final HttpServletResponse
		 * response,@ModelAttribute("addProduct") AddProduct addProduct) throws
		 * IOException {
		 * 
		 * System.out.println("AddProduct[ProID]:"+addProduct.getProID());
		 * addProduct.setProID("");
		 * System.out.println("AddProduct[ProName]:"+addProduct.getProName());
		 * addProduct.setProName("");
		 * System.out.println("AddProduct[Brand]:"+addProduct.getBrand());
		 * addProduct.setBrand("");
		 * System.out.println("AddProduct[Category]:"+addProduct.getCategory());
		 * addProduct.setCategory("");
		 * System.out.println("AddProduct[Description]:"+addProduct.getDescription());
		 * addProduct.setDescription(""); return"admin/form-basic";
		 * 
		 * }
		 */
	
}
