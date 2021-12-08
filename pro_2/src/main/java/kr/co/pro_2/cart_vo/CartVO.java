package kr.co.pro_2.cart_vo;

public class CartVO {
	private int cart_id,product_id,cart_qty;
	private String member_userid, cart_writeday;
	
	public int getCart_id() {
		return cart_id;
	}
	public void setCart_id(int cart_id) {
		this.cart_id = cart_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getCart_qty() {
		return cart_qty;
	}
	public void setCart_qty(int cart_qty) {
		this.cart_qty = cart_qty;
	}
	public String getMember_userid() {
		return member_userid;
	}
	public void setMember_userid(String member_userid) {
		this.member_userid = member_userid;
	}
	public String getCart_writeday() {
		return cart_writeday;
	}
	public void setCart_writeday(String cart_writeday) {
		this.cart_writeday = cart_writeday;
	}

}
