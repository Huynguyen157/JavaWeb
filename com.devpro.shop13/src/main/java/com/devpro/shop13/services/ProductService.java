package com.devpro.shop13.services;

import java.io.File;
import java.util.List;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.hibernate.event.spi.SaveOrUpdateEvent;
import org.springframework.aop.ThrowsAdvice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.shop13.conf.MVCConf;
import com.devpro.shop13.dto.CategoriesModel;

import com.devpro.shop13.dto.ProductModel;
import com.devpro.shop13.dto.ProductSearchModel;
import com.devpro.shop13.entities.CategoriesEntity;
import com.devpro.shop13.entities.ProductEntity;
import com.devpro.shop13.entities.ProductsImagesEntity;
import com.github.slugify.Slugify;


@Service
public class ProductService extends BaseService<ProductEntity>{
	 @PersistenceContext
     EntityManager entityManager;
	 @Autowired
	ProductsImagesService productsImagesService;
    
	// tra ve 1 list cac category
	 private boolean isEmptyUploadFile(MultipartFile[] images) {
			if (images == null || images.length <= 0)
				return true;
			
			if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
				return true;
			
			return false;
		}

		private boolean isEmptyUploadFile(MultipartFile image) {
			return image == null || image.getOriginalFilename().isEmpty();
		}
		//edit product
		@Transactional(rollbackOn = Exception.class)
		public ProductEntity edit(ProductEntity product, MultipartFile avatar, MultipartFile[] pictures)
				throws Exception {
			try {
				// lay thong tin san pham trong db.
				ProductEntity productOnDb = super.getById(product.getId());
				
				// avatar
				if(!isEmptyUploadFile(avatar)) {
					// xoa avatar cu di
					new File(MVCConf.ROOT_UPLOAD_PATH + productOnDb.getAvatar()).delete();
					
					// add avartar moi
					avatar.transferTo(new File(MVCConf.ROOT_UPLOAD_PATH + "product/avatar/" + avatar.getOriginalFilename()));
					product.setAvatar("product/avatar/" + avatar.getOriginalFilename());
				} else {
					// su dung lai avatar cu
					product.setAvatar(productOnDb.getAvatar());
				}
				
				// product images
				if(!isEmptyUploadFile(pictures)) {
					// xoa danh sach anh cu di
					Set<ProductsImagesEntity> productImagesOnDb = productOnDb.getProductsImages();
					for(ProductsImagesEntity pic : productImagesOnDb) {
						new File(MVCConf.ROOT_UPLOAD_PATH + pic.getPath()).delete();
//						product.deleteProductImages(pic);
						productsImagesService.delete(pic);
					}
					
					// update danh sach anh moi
					for(MultipartFile pic : pictures) {
						pic.transferTo(new File(MVCConf.ROOT_UPLOAD_PATH + "product/pictures/" + pic.getOriginalFilename()));
						
						ProductsImagesEntity pi = new ProductsImagesEntity();
						pi.setPath("product/pictures/" + pic.getOriginalFilename());
						pi.setTitle(pic.getOriginalFilename());
						product.addProductsImage(pi);
					}
				}
				//tao seo cho product
	 			product.setSeo(new Slugify().slugify(product.getTitle()));
				// save to db
				ProductEntity saved = super.saveOrUpdate(product);
				return saved;
			} catch (Exception e) {
				throw e;
			}
		}
		
		
	 //transactional su dung trong service
	 // muon nhat quan du lieu
     @Transactional(rollbackOn = Exception.class)
 	public ProductEntity save(ProductEntity product, MultipartFile avatar, MultipartFile[] pictures)
     throws Exception{
 		try {
 			//avatar
 			if(!isEmptyUploadFile(avatar))
 			{
 			avatar.transferTo(new File(MVCConf.ROOT_UPLOAD_PATH + "product/avatar/" + avatar.getOriginalFilename()));
 			product.setAvatar("product/avatar/" + avatar.getOriginalFilename());
 			}
 			//product images
 			if(!isEmptyUploadFile(pictures))
 			{
 			for(MultipartFile pic: pictures)
 			{
 				pic.transferTo(new File(MVCConf.ROOT_UPLOAD_PATH + "product/pictures/" + pic.getOriginalFilename()));
 				ProductsImagesEntity pi= new ProductsImagesEntity();
 				pi.setPath(MVCConf.ROOT_UPLOAD_PATH + "product/pictures/" + pic.getOriginalFilename());
 		        pi.setTitle(pic.getOriginalFilename());
 		        product.addProductsImage(pi);
 			}
 			}
 			//tao seo cho product
 			product.setSeo(new Slugify().slugify(product.getTitle()));
 				// save database
 				ProductEntity saved=super.saveOrUpdate(product);
 			
 			
// 			throw new Exception("TEST ROLLBACK");
 				return saved;
 			
 		} catch (Exception e) {
 			throw e;
 		}
     
 	}
     
    private Exception Exception(String string) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
 	protected Class<ProductEntity> clazz() {
 		return ProductEntity.class;
 	}	
 	@Override
 	protected EntityManager em() {
 		return entityManager;
 	}
 	//search admin
 	public List<ProductEntity> searchAdmin(ProductSearchModel ad)
 	{
 		//khoi tao cau lenh
 		String sql = "SELECT * FROM tbl_products p WHERE 1=1";
 		//tim kiem san pham theo seachText
 				if(!StringUtils.isEmpty(ad.getKeyword())) {
 					sql += " and (p.title like '%"+ad.getKeyword()+"%'"
 							+ " or p.detail_description like '%"+ad.getKeyword()+"%'"
 							+ " or p.short_description like '%"+ad.getKeyword()+"%')";
 							
 			      }
 				//chi lay san pham chua xoa
// 				sql+="and p.status=1";
 		return executeNativeSqlWithPaging(sql, ad.getPage());	
 	}
 	public List<ProductEntity> count() {
		String sql = "SELECT  * FROM tbl_products p  WHERE 1=1";
		return executeNativeSqlWithPaging(sql,-1);
	}
 	public List<ProductEntity> count1() {
		String sql = "SELECT  * FROM tbl_products p  WHERE 1=1";
		return executeNativeSqlPagingFrontend(sql,-1);
	}
 	//search user
 	public List<ProductEntity> search(ProductSearchModel searchModel) {
       String sql = "SELECT * FROM tbl_products p WHERE 1=1";
		
		//tim kiem san pham theo categoryId
		if(searchModel.getCategoryId() > 0) {
			sql += " and p.category_id = " + searchModel.getCategoryId();
		}
		
		// tim kiem san pham theo productSeo
				if (!StringUtils.isEmpty(searchModel.getProductSeo())) {
					sql += " and p.seo ='" + searchModel.getProductSeo() + "'";
				}
				// tim kiem san pham theo categorySeo
				if (!StringUtils.isEmpty(searchModel.getCategorySeo())) {
					sql += " and p.category_id in (select id from tbl_category c where c.seo = '" + searchModel.getCategorySeo()
							+ "')";
				}
		
		//tim kiem san pham theo seachText
		if(!StringUtils.isEmpty(searchModel.getSearchText())) {
			sql += " and (p.title like '%"+searchModel.getSearchText()+"%'"
					+ " or p.detail_description like '%"+searchModel.getSearchText()+"%'"
					+ " or p.short_description like '%"+searchModel.getSearchText()+"%')";
					
	      }
		return executeNativeSqlPagingFrontend(sql,searchModel.getPage());
 	
 	}
 	@Transactional
	public void delete(ProductEntity product){
		 super.delete(product);
	}
 	}
