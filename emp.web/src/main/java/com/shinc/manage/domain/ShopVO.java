package com.shinc.manage.domain;

import java.sql.Date;

public class ShopVO {

	private int order_number;
	private int product_id;
	private int quantity;
	private int order_price;
	private String userid;
	private String product_name;
	private String company;
	private String keyword;
	private String details;
	private Date production_date;
	private String product_image;
	public int getOrder_number() {
		return order_number;
	}
	public void setOrder_number(int order_number) {
		this.order_number = order_number;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getOrder_price() {
		return order_price;
	}
	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public Date getProduction_date() {
		return production_date;
	}
	public void setProduction_date(Date production_date) {
		this.production_date = production_date;
	}
	public String getProduct_image() {
		return product_image;
	}
	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}
	@Override
	public String toString() {
		return "ShopVO [order_number=" + order_number + ", product_id="
				+ product_id + ", quantity=" + quantity + ", order_price="
				+ order_price + ", userid=" + userid + ", product_name="
				+ product_name + ", company=" + company + ", keyword="
				+ keyword + ", details=" + details + ", production_date="
				+ production_date + ", product_image=" + product_image + "]";
	}

	
}
