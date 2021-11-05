package com.devpro.shop13.controller.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.shop13.controller.user.BaseController;
import com.devpro.shop13.dto.AddProduct;
import com.devpro.shop13.dto.Contact;
import com.devpro.shop13.dto.ProductModel;
import com.devpro.shop13.dto.ProductSearchModel;
import com.devpro.shop13.entities.ProductEntity;
import com.devpro.shop13.services.CategoriesService;
import com.devpro.shop13.services.ProductService;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class AdminAddProductController extends BaseController {
	@Autowired
	private ProductService productService;

	@Autowired
	private CategoriesService categoriesService;

	@RequestMapping(value = { "/addproduct" }, method = RequestMethod.POST)
	public String addProduct_Post(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response, @ModelAttribute("productEntity") ProductEntity productEntity,
			@RequestParam("productAvatar") MultipartFile productAvatar,
			@RequestParam("productPictures") MultipartFile[] productPictures) throws Exception {
		if (productEntity.getId() != null && productEntity.getId() > 0) {
			productService.edit(productEntity, productAvatar, productPictures);
		} else {
			productService.save(productEntity, productAvatar, productPictures);
		}
		return "redirect:/addproduct";
	}

	@RequestMapping(value = { "/addproduct" }, method = RequestMethod.GET)
	public String addProduct_Get(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		model.addAttribute("categories", categoriesService.findAll());
		model.addAttribute("productEntity", new ProductEntity());
		return "admin/addproduct";
	}

	// edit product
	@RequestMapping(value = { "/admin/edit-product" }, method = RequestMethod.GET)
	public String editProduct_Get(final ModelMap model, final HttpServletRequest request,
			final HttpServletResponse response) throws Exception {
		int proructId = Integer.parseInt(request.getParameter("id"));
		ProductEntity productEntity = productService.getById(proructId);

		model.addAttribute("categories", categoriesService.findAll());
		model.addAttribute("productEntity", productEntity);
		return "admin/addproduct";
	}

	@RequestMapping(value = { "/admin/delete/{productSeo}" }, method = RequestMethod.GET)
	public String deleteProduct(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@PathVariable("productSeo") String productSeo) throws IOException {
		// k biáº¿t sai á»Ÿ Ä‘Ã¢u Ã , khÃ´ng, giá»‘ng láº¯m r :v
		// Rá»“i Ä‘áº¥y ok
		// Láº¥y sp tá»« db
		ProductSearchModel productSearch = new ProductSearchModel();
		productSearch.setProductSeo(productSeo);
		// controller gá»�i sang productservice Ä‘aua
//		System.out.println("Ha: " + productSeo);
		ProductEntity product = productService.search(productSearch).get(0);

//		System.out.println("hi: " + product.getId());
		productService.delete(product);
		// Can lay danh sach category tá»« db vÃ  tráº£ vá»� view qua model
		// ok
		// Ä�áº©y dá»¯ liá»‡u xuá»‘ng view thÃ´ng qua tháº±ng model
//		productService.delete(product);
		return "redirect:/admin/list-product"; // -> duong dan toi VIEW.
	}

//////////////////////////DELETE
	@RequestMapping(value = { "/admin/delete-product" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteProduct_Ajax(final ModelMap model,
			final HttpServletRequest request, final HttpServletResponse response) {

		Map<String, Object> jsonResult = new HashMap<String, Object>();

		try {
			int productId = Integer.parseInt(request.getParameter("productId"));
			ProductEntity p = productService.getById(productId);
			p.setStatus(Boolean.FALSE);
			productService.saveOrUpdate(p);
			jsonResult.put("code", 200);
			jsonResult.put("status", "TC");

		} catch (Exception e) {
			jsonResult.put("code", 500);
			jsonResult.put("message", e.getMessage());
		}

		return ResponseEntity.ok(jsonResult);
	}

	/////////////////////////// LIST
	@RequestMapping(value = { "/admin/list-product" }, method = RequestMethod.GET)
	public String listProducts(final ModelMap model, final HttpServletRequest request, Integer page,
			final HttpServletResponse response) throws Exception {
//		int page = getCurrentPage(request);
		if (page == null) {
			page = 1;
		}
		String keyword = request.getParameter("keyword");
		ProductSearchModel ad = new ProductSearchModel();
		ad.setKeyword(keyword);
		ad.setPage(page-1);
		// Lấy full bản ghi không theo key
		List<ProductEntity> list = productService.count();

		// Lấy tổng số bản ghi
		int listCount = list.size();

		// Số trang
		int totalPage = (Integer) listCount / productService.SIZE_OF_PAGE
				+ (listCount % productService.SIZE_OF_PAGE == 0 ? 0 : 1);
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

		// Can lay danh sach product từ db và trả về view qua model
//				List<ProductsEntity> products = productService.findAll();

		model.addAttribute("products", productService.searchAdmin(ad));

		return "admin/list-product";
	}

}
