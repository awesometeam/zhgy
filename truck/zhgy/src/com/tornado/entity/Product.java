package com.tornado.entity;

import com.tornado.entity.base.BaseProduct;



public class Product extends BaseProduct {
	
	private static final long serialVersionUID = 1L;
	
	private static final String noPicture = "/zhgy/images/NoPicture.jpg";
	
	private String primaryImage = "";

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Product () {
		super();
	}
	
	public Product (Long id,String name,String number, String primaryImage) {
		super();
		setId(id);
		setName(name);
		setNumber(number);
		setPrimaryImage(primaryImage);
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
		boolean inshowcase,
		java.lang.String language) {

		super (
			id,
			name,
			inshowcase,
			language);
	}

/*[CONSTRUCTOR MARKER END]*/
	public void setPrimaryImage(String s)
	{
		if(s==null || s.equals(""))
			primaryImage = Product.noPicture;
		else
			primaryImage = s;
	}

	public String getPrimaryImage()
	{
		return primaryImage;
	}

}