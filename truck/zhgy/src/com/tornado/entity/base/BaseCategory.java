package com.tornado.entity.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the CATEGORY table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="CATEGORY"
 */

public abstract class BaseCategory  implements Serializable {

	public static String REF = "Category";
	public static String PROP_NAME = "Name";
	public static String PROP_INTRODUCTION = "Introduction";
	public static String PROP_HIGHERID = "Higherid";
	public static String PROP_HAVEHIGHER = "Havehigher";
	public static String PROP_NUMBER = "Number";
	public static String PROP_ID = "Id";


	// constructors
	public BaseCategory () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseCategory (java.lang.Long id) {
		this.setId(id);
		initialize();
	}

	/**
	 * Constructor for required fields
	 */
	public BaseCategory (
		java.lang.Long id,
		java.lang.Integer havehigher) {

		this.setId(id);
		this.setHavehigher(havehigher);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.Long id;

	// fields
	private java.lang.Integer havehigher;
	private java.lang.Long higherid;
	private java.lang.String name;
	private java.lang.String number;
	private java.lang.String introduction;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="sequence"
     *  column="CATEGORY_ID"
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
	 * Return the value associated with the column: HAVEHIGHER
	 */
	public java.lang.Integer getHavehigher () {
		return havehigher;
	}

	/**
	 * Set the value related to the column: HAVEHIGHER
	 * @param havehigher the HAVEHIGHER value
	 */
	public void setHavehigher (java.lang.Integer havehigher) {
		this.havehigher = havehigher;
	}



	/**
	 * Return the value associated with the column: HIGHERID
	 */
	public java.lang.Long getHigherid () {
		return higherid;
	}

	/**
	 * Set the value related to the column: HIGHERID
	 * @param higherid the HIGHERID value
	 */
	public void setHigherid (java.lang.Long higherid) {
		this.higherid = higherid;
	}



	/**
	 * Return the value associated with the column: NAME
	 */
	public java.lang.String getName () {
		return name;
	}

	/**
	 * Set the value related to the column: NAME
	 * @param name the NAME value
	 */
	public void setName (java.lang.String name) {
		this.name = name;
	}



	/**
	 * Return the value associated with the column: NUMBER
	 */
	public java.lang.String getNumber () {
		return number;
	}

	/**
	 * Set the value related to the column: NUMBER
	 * @param number the NUMBER value
	 */
	public void setNumber (java.lang.String number) {
		this.number = number;
	}



	/**
	 * Return the value associated with the column: INTRODUCTION
	 */
	public java.lang.String getIntroduction () {
		return introduction;
	}

	/**
	 * Set the value related to the column: INTRODUCTION
	 * @param introduction the INTRODUCTION value
	 */
	public void setIntroduction (java.lang.String introduction) {
		this.introduction = introduction;
	}




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.tornado.entity.Category)) return false;
		else {
			com.tornado.entity.Category category = (com.tornado.entity.Category) obj;
			if (null == this.getId() || null == category.getId()) return false;
			else return (this.getId().equals(category.getId()));
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