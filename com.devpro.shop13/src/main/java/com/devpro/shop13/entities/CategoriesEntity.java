package com.devpro.shop13.entities;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tbl_category")
public class CategoriesEntity extends BaseEntity {
     @Column(name = "name", length = 100, nullable = false)
 	private String name;

 	@Column(name = "description", length = 100, nullable = false)
 	private String description;

 	@Column(name = "seo", length = 1000, nullable = true)
 	private String seo;
    
 	//quan he 1 nhieu 
 	// FetchType.Lazy chi lay category vi 1 category co nhieu product
   //lien ket ban product nen nos la 1 list hoac 1 set
 	//Cascade.All xoa cha se xoa con
   //mappedBy
 	@OneToMany(cascade= CascadeType.ALL, mappedBy="categories",fetch=FetchType.LAZY)
	private Set<ProductEntity> products =new HashSet<ProductEntity>();
 	
 	@OneToMany(cascade= CascadeType.ALL,mappedBy="parent",fetch=FetchType.EAGER)
 	private Set<CategoriesEntity> childs=new HashSet<CategoriesEntity>();
 	
 	@ManyToOne(fetch= FetchType.EAGER)
 	@JoinColumn(name="parent_id")
 	private CategoriesEntity parent;
 	
 	public Set<CategoriesEntity> getChilds() {
		return childs;
	}
	public void setChilds(Set<CategoriesEntity> childs) {
		this.childs = childs;
	}
	public CategoriesEntity getParent() {
		return parent;
	}
	public void setParent(CategoriesEntity parent) {
		this.parent = parent;
	}
	public String getName() {
 		return name;
 	}
 	// khi dinh nghia Onetomany thi luon phai dinh nghia hai ham
 	// quan li list
 	
 	public void addProduct(ProductEntity product)
 	{
 		products.add(product);
 		product.setCategories(this);
 	}
 	public void deleteProduct(ProductEntity product)
 	{
 		products.remove(product);
 		product.setCategories(null);
 	}

 	public void setName(String name) {
 		this.name = name;
 	}
	

	public Set<ProductEntity> getProducts() {
		return products;
	}

	public void setProducts(Set<ProductEntity> products) {
		this.products = products;
	}

	public String getDescription() {
 		return description;
 	}

 	public void setDescription(String description) {
 		this.description = description;
 	}

 	public String getSeo() {
 		return seo;
 	}

 	public void setSeo(String seo) {
 		this.seo = seo;
 	}
}
