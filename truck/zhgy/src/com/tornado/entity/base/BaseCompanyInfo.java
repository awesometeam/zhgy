package com.tornado.entity.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the COMPANY_INFO table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="COMPANY_INFO"
 */

public abstract class BaseCompanyInfo  implements Serializable {

	public static String REF = "CompanyInfo";
	public static String PROP_VALUE = "Value";
	public static String PROP_KEY = "Key";
	public static String PROP_ID = "Id";


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
	private java.lang.String key;
	private java.lang.String value;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="sequence"
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
	 * Return the value associated with the column: KEY
	 */
	public java.lang.String getKey () {
		return key;
	}

	/**
	 * Set the value related to the column: KEY
	 * @param key the KEY value
	 */
	public void setKey (java.lang.String key) {
		this.key = key;
	}



	/**
	 * Return the value associated with the column: VALUE
	 */
	public java.lang.String getValue () {
		return value;
	}

	/**
	 * Set the value related to the column: VALUE
	 * @param value the VALUE value
	 */
	public void setValue (java.lang.String value) {
		this.value = value;
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