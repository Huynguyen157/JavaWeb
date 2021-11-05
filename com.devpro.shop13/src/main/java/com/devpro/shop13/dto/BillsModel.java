package com.devpro.shop13.dto;

import com.ibm.icu.math.BigDecimal;
import com.ibm.icu.text.DecimalFormat;

public class BillsModel {
	private int ID;
	private BigDecimal total;
	private String searchText;
	private String code;
	private String saleSeo;
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public BigDecimal getTotal() {
		return total;
	}
	public void setTotal(BigDecimal total) {
		this.total = total;
	}
	public String getSearchText() {
		return searchText;
	}
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getSaleSeo() {
		return saleSeo;
	}
	public void setSaleSeo(String saleSeo) {
		this.saleSeo = saleSeo;
	}
	
	
}
