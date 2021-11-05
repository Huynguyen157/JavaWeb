package com.devpro.shop13.dto;

import java.math.BigDecimal;

public class ProductSearchModel {
   private int categoryId;
   private String categorySeo;
   private String searchText;
   private String productSeo;
   private String name;
   private BigDecimal price;
   public BigDecimal getPrice() {
	return price;
}

public void setPrice(BigDecimal price) {
	this.price = price;
}

public String keyword;
   private int page;
   public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getKeyword() {
	return keyword;
}

public void setKeyword(String keyword) {
	this.keyword = keyword;
}

public int getPage() {
	return page;
}

public void setPage(int page) {
	this.page = page;
}

public String getProductSeo() {
	return productSeo;
}

public void setProductSeo(String productSeo) {
	this.productSeo = productSeo;
}

public String getSearchText() {
	return searchText;
}

public void setSearchText(String searchText) {
	this.searchText = searchText;
}

public String getCategorySeo() {
	return categorySeo;
}

public void setCategorySeo(String categorySeo) {
	this.categorySeo = categorySeo;
}

public int getCategoryId() {
	return categoryId;
}

public void setCategoryId(int categoryId) {
	this.categoryId = categoryId;
}
}
