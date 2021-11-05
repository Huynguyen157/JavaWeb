package com.devpro.shop13.dto;

public class AddProduct {
    private String proID;
    private String proName;
    private String brand;
    private String category;
    private String description;
	public String getProID() {
		return proID;
	}
	public void setProID(String proID) {
		this.proID = proID;
	}
	public String getProName() {
		return proName;
	}
	public void setProName(String proName) {
		this.proName = proName;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
    
}
