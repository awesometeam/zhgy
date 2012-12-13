package com.tornado.entity.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the company_info table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="company_info"
 */

public abstract class BaseCompanyInfo  implements Serializable {

	public static String REF = "CompanyInfo";
	public static String PROP_KEYWORD = "Keyword";
	public static String PROP_ID = "Id";
	public static String PROP_VAL = "Val";


	// constructors
	public BaseCompanyInfo () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseCompanyInfo (java.lang.Long id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.Long id;

	// fields
	private java.lang.String keyword;
	private java.lang.String val;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="increment"
     *  column="COMPANY_INFO_ID"
     */
	public java.lang.Long getId () {
		return id;
	}

	/**
	 * Set the unique identifier of this class
	 * @param id the new ID
	 */
	public void setId (java.lang.Long id) {
		this.id = id;
		this.hashCode = Integer.MIN_VALUE;
	}




	/**
	 * Return the value associated with the column: KEYWORD
	 */
	public java.lang.String getKeyword () {
		return keyword;
	}

	/**
	 * Set the value related to the column: KEYWORD
	 * @param keyword the KEYWORD value
	 */
	public void setKeyword (java.lang.String keyword) {
		this.keyword = keyword;
	}



	/**
	 * Return the value associated with the column: VAL
	 */
	public java.lang.String getVal () {
		return val;
	}

	/**
	 * Set the value related to the column: VAL
	 * @param val the VAL value
	 */
	public void setVal (java.lang.String val) {
		this.val = val;
	}




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.tornado.entity.CompanyInfo)) return false;
		else {
			com.tornado.entity.CompanyInfo companyInfo = (com.tornado.entity.CompanyInfo) obj;
			if (null == this.getId() || null == companyInfo.getId()) return false;
			else return (this.getId().equals(companyInfo.getId()));
		}
	}

	public int hashCode () {
		if (Integer.MIN_VALUE == this.hashCode) {
			if (null == this.getId()) return super.hashCode();
			else {
				String hashStr = this.getClass().getName() + ":" + this.getId().hashCode();
				this.hashCode = hashStr.hashCode();
			}
		}
		return this.hashCode;
	}


	public String toString () {
		return super.toString();
	}


}