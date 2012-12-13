package com.tornado.entity;

import com.tornado.entity.base.BaseProduct;



public class Product extends BaseProduct {
	private static final long serialVersionUID = 1L;
	
	private String primaryImage = "";

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Product () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Product (java.lang.Long id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public Product (
		java.lang.Long id,
		java.lang.String name,
		boolean inshowcase) {

		super (
			id,
			name,
			inshowcase);
	}
	
/*[CONSTRUCTOR MARKER END]*/
	
	public void setPrimaryImage(String s){
		primaryImage = s;
	}

	public String getPrimaryImage(){
		return primaryImage;
	}

}