package com.tornado.entity;

import com.tornado.entity.base.BaseInformationLog;



public class InformationLog extends BaseInformationLog {
	private static final long serialVersionUID = 1L;

/*[CONSTRUCTOR MARKER BEGIN]*/
	public InformationLog () {
		super();
	}

	/**
	 * Constructor for primary key
	 */
	public InformationLog (java.lang.Long id) {
		super(id);
	}

	/**
	 * Constructor for required fields
	 */
	public InformationLog (
		java.lang.Long id,
		java.lang.Long infoId,
		java.lang.Integer modifyType) {

		super (
			id,
			infoId,
			modifyType);
	}

/*[CONSTRUCTOR MARKER END]*/


}