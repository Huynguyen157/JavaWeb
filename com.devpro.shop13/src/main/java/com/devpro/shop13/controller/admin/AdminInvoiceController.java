package com.devpro.shop13.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.shop13.controller.user.BaseController;
import com.devpro.shop13.dto.BillsModel;
import com.devpro.shop13.dto.ProductSearchModel;
import com.devpro.shop13.entities.ProductEntity;
import com.devpro.shop13.entities.SaleOrderEntity;
import com.devpro.shop13.entities.SaleorderProductEntity;
import com.devpro.shop13.services.ProductService;
import com.devpro.shop13.services.SaleOrderProductService;
import com.devpro.shop13.services.SaleOrderService;
@Controller
public class AdminInvoiceController extends BaseController {
	
	@Autowired
	private SaleOrderService saleOrderService;
	@Autowired
	private ProductService productService;
	@Autowired
	private SaleOrderProductService saleOrderProductService;
	@RequestMapping(value= {"/invoice"}, method=RequestMethod.GET)
    public String invoice(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) throws IOException
    {
		int proructId = Integer.parseInt(request.getParameter("id"));
		ProductEntity productEntity = productService.getById(proructId);
		model.addAttribute("productEntity", productEntity);
      model.addAttribute("invoice",saleOrderProductService.findAll() );
      return"admin/invoice";

    }
	
	@RequestMapping(value = { "/admin/invoice/{saleOrderId}" }, method = RequestMethod.GET) // -> action
	public String editProduct(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("saleOrderId") int saleOrderId)
			throws IOException {
		
		//Lấy sp từ db
		SaleOrderEntity saleOrderEntity = saleOrderService.getById(saleOrderId);
	//	CartNumber cartNumber=new CartNumber();
//		cartNumber.setProductNumber(1);
//		model.addAttribute("cart", cartNumber);
		//Can lay danh sach category từ db và trả về view qua model
//		List<CategoryEntity> categories = categoriesService.findAll();
				
		//Đẩy dữ liệu xuống view thông qua thằng model
//		model.addAttribute("categories",categories);
		
		model.addAttribute("saleOrder",saleOrderEntity);
		List<SaleorderProductEntity> listOrder = saleOrderProductService.find(saleOrderId);
		model.addAttribute("listOrder", listOrder);
		double tong = 0;
		for (SaleorderProductEntity saleOrderProductsEntity : listOrder) {
			tong +=(double) saleOrderProductsEntity.getQuality() *Integer.valueOf(saleOrderProductsEntity.getProductEntity().getPrice_sale().intValue());
		}
		
		System.out.println("tong: "+tong);
		model.addAttribute("total", tong);
		return "admin/invoice"; // -> duong dan toi VIEW.
	}

	@RequestMapping(value = { "/admin/list-bills" }, method = RequestMethod.GET)
	public String listUsers(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		model.addAttribute("bills", saleOrderService.findAll());
		return "admin/list-bills";
	}
	@RequestMapping(value = { "/admin/del-order/{saleOrderId}" }, method = RequestMethod.GET) // -> action
	public String deleteSaleOrder(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response,
			@PathVariable("saleOrderId") int saleOrderId
			)//inputFile là name bên phần contactTiki.jsp
			throws Exception {
		//Lấy dữ liệu từ db
	//	CategoryEntity categoriesDelete = categoriesService.getById(categoryId);
	//	categoriesService.delete(categoriesDelete);
	//	System.out.println("hi: " + saleOrderId);
		SaleOrderEntity sale = saleOrderService.getById(saleOrderId);
//		System.out.println(sale.getCustomerName() + " - " + sale.getId() + " - " + sale.getCustomerEmail());
		saleOrderService.delete(sale);
		// K xóa đc, ok, mở a cái hàm xóa ở proeuct
		return "redirect:/admin/list-bills";
	}
}
