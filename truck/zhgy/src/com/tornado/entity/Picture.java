package com.tornado.entity;

import com.tornado.entity.base.BasePicture;



public class Picture extends BasePicture {
	private static final long serialVersionUID = 1L;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Picture () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Picture (java.lang.Long id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public Picture (
		java.lang.Long id,
		java.lang.String picturePath) {

		super (
			id,
			picturePath);
	}

/*[CONSTRUCTOR MARKER END]*/


}