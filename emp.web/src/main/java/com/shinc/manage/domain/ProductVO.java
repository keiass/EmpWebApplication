package com.shinc.manage.domain;


public class ProductVO { 

	private int productId;
	private String barcode;
	private String productName;
	private String userId;
	private String keyword;
	private String location;
	private String productImage;
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getBarcode() {
		return barcode;
	}
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	@Override
	public String toString() {
		return "ProductVO [productId=" + productId + ", barcode=" + barcode
				+ ", productName=" + productName + ", userId=" + userId
				+ ", keyword=" + keyword + ", location=" + location
				+ ", productImage=" + productImage + "]";
	}
	

}
