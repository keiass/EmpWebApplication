package com.shinc.manage.domain;

public class BasketVO {
/*
		ORDER_NUMBER                  		NUMBER(10)		 NULL ,
		PRODUCT_ID                    		NUMBER(10)		 NULL ,
		QUANTITY                      		NUMBER(4)		 NULL ,
		ORDER_PRICE                   		NUMBER(10)		 NULL ,
		USERID                        		VARCHAR2(15)		 NULL 
 */
	private int orderNumber;
	private int productId;
	private int quantity;
	private int orderPrice;
	private String userid;
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	@Override
	public String toString() {
		return "BasketVO [orderNumber=" + orderNumber + ", productId="
				+ productId + ", quantity=" + quantity + ", orderPrice="
				+ orderPrice + ", userid=" + userid + "]";
	}
}
