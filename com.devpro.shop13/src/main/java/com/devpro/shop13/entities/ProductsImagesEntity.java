package com.devpro.shop13.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="tbl_products_images")
public class ProductsImagesEntity extends BaseEntity {
	@Column(name="title", length=500,nullable=false)
	private String title;
	@Column(name="path", length=200, nullable=false)
	private String path;
	
	@ManyToOne(fetch= FetchType.EAGER)
	 @JoinColumn(name="product_id")
	 private ProductEntity productEntity;
	
	
	
	
	public ProductEntity getProductEntity() {
		return productEntity;
	}
	public void setProductEntity(ProductEntity productEntity) {
		this.productEntity = productEntity;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	
	
}
