package com.tornado.entity;

import com.tornado.entity.base.BaseProductLog;



public class ProductLog extends BaseProductLog {
	private static final long serialVersionUID = 1L;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public ProductLog () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public ProductLog (java.lang.Long id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public ProductLog (
		java.lang.Long id,
		java.lang.Long productId,
		java.lang.String name) {

		super (
			id,
			productId,
			name);
	}

/*[CONSTRUCTOR MARKER END]*/


}