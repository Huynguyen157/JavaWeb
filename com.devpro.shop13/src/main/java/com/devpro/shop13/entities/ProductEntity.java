package com.devpro.shop13.entities;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_products")
public class ProductEntity extends BaseEntity {
   
	@Column(name = "title", length = 1000, nullable = false)
 	private String title;
	@Column(name = "price",precision = 13, scale = 2, nullable = false)
 	private BigDecimal price;
	@Column(name = "price_sale",precision = 13, scale = 2, nullable = true)
 	private BigDecimal price_sale;
	@Column(name = "short_description", length = 3000, nullable = false)
 	private String short_description;
	@Lob
	@Column(name = "detail_description",columnDefinition = "LONGTEXT", nullable = false)
 	private String detail_description;
	@Column(name = "avatar", length = 200, nullable = true)
 	private String avatar;
	
	 @ManyToOne(fetch= FetchType.EAGER)
	 @JoinColumn(name="category_id")
	 private CategoriesEntity categories;
	 
	// relationship with sale_order_product
		@OneToMany(cascade = CascadeType.ALL, mappedBy = "saleorder", fetch = FetchType.LAZY)
		private List<SaleorderProductEntity> productsale = new ArrayList<SaleorderProductEntity>();
		
	 @OneToMany(cascade= CascadeType.ALL, mappedBy="productEntity",fetch=FetchType.LAZY)
	 private Set<ProductsImagesEntity> ProductsImages =new HashSet<ProductsImagesEntity>();
	 public void addProductsImage(ProductsImagesEntity productsImage) {
		 ProductsImages.add( productsImage);
		 productsImage.setProductEntity(this);
		}
		
		public void deleteProductsImage(ProductsImagesEntity productsImage) {
			ProductsImages.remove(productsImage);
			productsImage.setProductEntity(null);
		}
		public void deleteProductAvatar() {
			this.setAvatar(null);
		}
		
		public void deleteProductImages() {
			for(ProductsImagesEntity productImages : ProductsImages) {
				deleteProductsImage(productImages);
			}
		}
	public Set<ProductsImagesEntity> getProductsImages() {
			return ProductsImages;
		}

		public void setProductsImages(Set<ProductsImagesEntity> productsImages) {
			ProductsImages = productsImages;
		}

	@Column(name = "seo",length=1000, nullable = true)
 	private String seo;
	@Column(name = "is_hot", nullable = true)
	private Boolean is_hot = Boolean.FALSE;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	public BigDecimal getPrice_sale() {
		return price_sale;
	}
	public void setPrice_sale(BigDecimal price_sale) {
		this.price_sale = price_sale;
	}
	public String getShort_description() {
		return short_description;
	}
	public void setShort_description(String short_description) {
		this.short_description = short_description;
	}
	public String getDetail_description() {
		return detail_description;
	}
	public void setDetail_description(String detail_description) {
		this.detail_description = detail_description;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String getSeo() {
		return seo;
	}
	public void setSeo(String seo) {
		this.seo = seo;
	}
	public Boolean getIs_hot() {
		return is_hot;
	}
	public void setIs_hot(Boolean is_hot) {
		this.is_hot = is_hot;
	}
	public CategoriesEntity getCategories() {
		return categories;
	}
	public void setCategories(CategoriesEntity categories) {
		this.categories = categories;
	}
	
	
}
