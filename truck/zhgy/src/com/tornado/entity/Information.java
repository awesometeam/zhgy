package com.tornado.entity;

import com.tornado.entity.base.BaseInformation;



public class Information extends BaseInformation {
	private static final long serialVersionUID = 1L;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public Information () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public Information (java.lang.Long id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public Information (
		java.lang.Long id,
		java.lang.String title) {

		super (
			id,
			title);
	}
	
	public Information (
			java.lang.Long id,
			java.lang.String title,
			java.lang.String author,
			java.util.Date date) {

			super (
				id,
				title,
				author,
				date);
		}

/*[CONSTRUCTOR MARKER END]*/


}