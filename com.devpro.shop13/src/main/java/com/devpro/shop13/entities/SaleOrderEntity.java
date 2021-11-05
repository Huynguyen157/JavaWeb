package com.devpro.shop13.entities;

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tbl_saleorder")
public class SaleOrderEntity extends BaseEntity {
  @Column(name="code", length=45, nullable=false)
  private String code;
  @Column(name="user_id")
  private Integer user_id;
  @Column(name="total",precision = 13, scale = 2, nullable=true)
  private BigDecimal total;
  @Column(name = "total_price", precision = 13, scale = 1, nullable = true)
	private BigDecimal total_price;
  public BigDecimal getTotal_price() {
	return total_price;
}
public void setTotal_price(BigDecimal total_price) {
	this.total_price = total_price;
}
@Column(name="customer_name", length=100, nullable=true)
  private String customer_name;
  @Column(name="customer_address", length=100, nullable=true)
  private String customer_address;
  @Column(name="customer_phone", length=100, nullable=true)
  private String customer_phone;
  @Column(name="customer_email", length=100, nullable=true)
  private String customer_email;
  @Column(name="seo", length=200, nullable=true)
  private String seo;
  @OneToMany(cascade= CascadeType.ALL, mappedBy="saleorder",fetch=FetchType.LAZY)
	private Set<SaleorderProductEntity> saleoderproducts =new HashSet<SaleorderProductEntity>();
     
  public void addSaleOderProduct(SaleorderProductEntity saleorderproduct)
	{
	  saleoderproducts.add(saleorderproduct);
	  saleorderproduct.setSaleorder(this);
	}
	public void deleteSaleOderProduct(SaleorderProductEntity saleorderproduct)
	{
		saleoderproducts.remove(saleorderproduct);
		  saleorderproduct.setSaleorder(null);
	}
  
  
public Set<SaleorderProductEntity> getSaleoderproducts() {
	return saleoderproducts;
}
public void setSaleoderproducts(Set<SaleorderProductEntity> saleoderproducts) {
	this.saleoderproducts = saleoderproducts;
}
public String getCode() {
	return code;
}
public void setCode(String code) {
	this.code = code;
}
public Integer getUser_id() {
	return user_id;
}
public void setUser_id(Integer user_id) {
	this.user_id = user_id;
}
public BigDecimal getTotal() {
	return total;
}
public void setTotal(BigDecimal total) {
	this.total = total;
}
public String getCustomer_name() {
	return customer_name;
}
public void setCustomer_name(String customer_name) {
	this.customer_name = customer_name;
}
public String getCustomer_address() {
	return customer_address;
}
public void setCustomer_address(String customer_address) {
	this.customer_address = customer_address;
}
public String getCustomer_phone() {
	return customer_phone;
}
public void setCustomer_phone(String customer_phone) {
	this.customer_phone = customer_phone;
}
public String getCustomer_email() {
	return customer_email;
}
public void setCustomer_email(String customer_email) {
	this.customer_email = customer_email;
}
public String getSeo() {
	return seo;
}
public void setSeo(String seo) {
	this.seo = seo;
}
  
}
