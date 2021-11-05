package com.devpro.shop13.controller.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop13.controller.admin.AdminAddProductController;
import com.devpro.shop13.dto.ProductSearchModel;
import com.devpro.shop13.entities.CategoriesEntity;
import com.devpro.shop13.entities.ProductEntity;
import com.devpro.shop13.services.CategoriesService;
import com.devpro.shop13.services.ProductService;



@Controller
public class DefaultController extends BaseController {
	 @Autowired
     private  CategoriesService categoriesService;
	 @Autowired
     private  ProductService productService;
	
	// data đẩy xuống tầng view thông qua model 
	// request và response đại diện cho thông tin người dùng gửi lên và sever gửi về
     @RequestMapping(value= {"/","/home","/index","/trangchu"}, method=RequestMethod.GET)
      public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws IOException
      {
    	 List<CategoriesEntity> categoriesList = categoriesService.search(null);
    	
    	 for(CategoriesEntity categoriesEntity2: categoriesList)
    	 {
    	 System.out.println(categoriesEntity2.getName());
    	 }
        return"user/index";
//    	response.getWriter().write("<h1>Hello world</h1>");
      }
     
//     @RequestMapping(value= {"/details1"}, method=RequestMethod.GET)
//     public String details(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws IOException
//     {
// 		
//       return"user/details1";
//     }
    
     @RequestMapping(value= {"/details/{productSeo}"}, method=RequestMethod.GET)
     public String details1(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response,@PathVariable("productSeo") String productSeo) throws IOException
     {
    	 
    	 ProductSearchModel sm = new ProductSearchModel();
 		sm.setProductSeo(productSeo);
     	List<ProductEntity> products = productService.search(sm);
 		model.addAttribute("product", products.get(0));		
		//display list product
		model.addAttribute("ProductEntity", productService.findAll());
		
       return"user/details";
     }
    
    
     @RequestMapping(value= {"/login"}, method=RequestMethod.GET)
     public String login(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws IOException
     {
   	 
       return"user/login";

     }
     @RequestMapping(value= {"/cart"}, method=RequestMethod.GET)
     public String cart(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws IOException
     {
   	 
       return"user/cart";

     }
     @RequestMapping(value= {"/danhmuc"}, method=RequestMethod.GET)
     public String danhmuc(final ModelMap model, final HttpServletRequest request, Integer page,final HttpServletResponse response) throws IOException
     {
    	List<CategoriesEntity> categories = categoriesService.findAll();
// 		int page = getCurrentPage(request);
 		if (page == null) {
 			page = 1;
 		}
 		String searchText = request.getParameter("searchText");
		ProductSearchModel searchModel = new ProductSearchModel();
		 searchModel.setSearchText(searchText); 
		searchModel.setPage(page-1);
		// Lấy full bản ghi không theo key
		List<ProductEntity> list = productService.count1();

		// Lấy tổng số bản ghi
		int listCount = list.size();

		// Số trang
		int totalPage = (Integer)listCount/productService.SIZE_OF_PAGE_FRONTEND
				+ (listCount % productService.SIZE_OF_PAGE_FRONTEND == 0 ? 0 : 1);
//				if(listCount % productService.SIZE_OF_PAGE == 0) {
//					totalPage +=0;
//				}else {
//					totalPage +=1; 
//				}
//				(lsitCount%sizeOfPage?0:1);
		List<Integer> listPage = new ArrayList<Integer>();
		for (int i = 1; i <= totalPage; i++) {
			listPage.add(i);
		}
		model.addAttribute("listPage", listPage);
		model.addAttribute("products", productService.search(searchModel));
		/*
		 * List<ProductEntity> products= productService.findAll(); List<ProductEntity> p
		 * = new ArrayList<ProductEntity>();
		 * 
		 * for (ProductEntity product : products) { if (product.getStatus() == true) {
		 * p.add(product);
		 * 
		 * }
		 * 
		 * }
		 */
		model.addAttribute("categories", categories);
		model.addAttribute("ProductEntity", productService.search(searchModel));
       return"user/danhmuc";

     }
     
     @RequestMapping(value = { "/category/{categorySeo}" }, method = RequestMethod.GET)
 	public String category(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response
 			, @PathVariable("categorySeo") String categorySeo)
 			throws IOException {
 		ProductSearchModel sm = new ProductSearchModel();
 		sm.setCategorySeo(categorySeo);
 		List<ProductEntity> products = productService.search(sm);
 		model.addAttribute("ProductEntity", products);
List<CategoriesEntity> categories = categoriesService.findAll();
		
		model.addAttribute("categories", categories);
 		model.addAttribute("categories", categoriesService.findAll());
 		return "user/danhmuc";
 	}
     
     @RequestMapping(value= {"/admin1"}, method=RequestMethod.GET)
     public String admin(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws IOException
     {
   	
       return"admin/index";

     }

 	@RequestMapping(value = { "/search" }, method = RequestMethod.GET)
 	public String search(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
 			throws IOException {
 		String searchText = request.getParameter("searchText");
 		
 		ProductSearchModel sm = new ProductSearchModel();
 		sm.setSearchText(searchText);
 		List<ProductEntity> products = productService.search(sm);
 		model.addAttribute("categories", categoriesService.findAll());
 		model.addAttribute("ProductEntity", products);
 		return "user/danhmuc";
 	}
}

