package com.tornado.entity;

import com.tornado.entity.base.BaseCategory;



public class Category extends BaseCategory {
	private static final long serialVersionUID = 1L;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Category () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Category (java.lang.Long id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public Category (
		java.lang.Long id,
		java.lang.Integer havehigher) {

		super (
			id,
			havehigher);
	}

/*[CONSTRUCTOR MARKER END]*/


}