package com.tornado.entity.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the product table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="product"
 */

public abstract class BaseProduct  implements Serializable {

	public static String REF = "Product";
	public static String PROP_NAME = "Name";
	public static String PROP_CATEGORY_ID = "CategoryId";
	public static String PROP_INTRODUCTION = "Introduction";
	public static String PROP_MATERIALS = "Materials";
	public static String PROP_NUMBER = "Number";
	public static String PROP_ID = "Id";
	public static String PROP_LANGUAGE = "Language";
	public static String PROP_PROCESSES = "Processes";
	public static String PROP_INSHOWCASE = "Inshowcase";
	public static String PROP_SPECIFICATIONS = "Specifications";
	public static String PROP_PACKAGING = "Packaging";


	// constructors
	public BaseProduct () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseProduct (java.lang.Long id) {
		this.setId(id);
		initialize();
	}

	/**
	 * Constructor for required fields
	 */
	public BaseProduct (
		java.lang.Long id,
		java.lang.String name,
		boolean inshowcase,
		java.lang.String language) {

		this.setId(id);
		this.setName(name);
		this.setInshowcase(inshowcase);
		this.setLanguage(language);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.Long id;

	// fields
	private java.lang.Long categoryId;
	private boolean inshowcase;
	private java.lang.String introduction;
	private java.lang.String language;
	private java.lang.String materials;
	private java.lang.String name;
	private java.lang.String number;
	private java.lang.String packaging;
	private java.lang.String processes;
	private java.lang.String specifications;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="increment"
     *  column="PRODUCT_ID"
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
	 * Return the value associated with the column: CATEGORY_ID
	 */
	public java.lang.Long getCategoryId () {
		return categoryId;
	}

	/**
	 * Set the value related to the column: CATEGORY_ID
	 * @param categoryId the CATEGORY_ID value
	 */
	public void setCategoryId (java.lang.Long categoryId) {
		this.categoryId = categoryId;
	}



	/**
	 * Return the value associated with the column: INSHOWCASE
	 */
	public boolean isInshowcase () {
		return inshowcase;
	}

	/**
	 * Set the value related to the column: INSHOWCASE
	 * @param inshowcase the INSHOWCASE value
	 */
	public void setInshowcase (boolean inshowcase) {
		this.inshowcase = inshowcase;
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



	/**
	 * Return the value associated with the column: LANGUAGE
	 */
	public java.lang.String getLanguage () {
		return language;
	}

	/**
	 * Set the value related to the column: LANGUAGE
	 * @param language the LANGUAGE value
	 */
	public void setLanguage (java.lang.String language) {
		this.language = language;
	}



	/**
	 * Return the value associated with the column: MATERIALS
	 */
	public java.lang.String getMaterials () {
		return materials;
	}

	/**
	 * Set the value related to the column: MATERIALS
	 * @param materials the MATERIALS value
	 */
	public void setMaterials (java.lang.String materials) {
		this.materials = materials;
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
	 * Return the value associated with the column: PACKAGING
	 */
	public java.lang.String getPackaging () {
		return packaging;
	}

	/**
	 * Set the value related to the column: PACKAGING
	 * @param packaging the PACKAGING value
	 */
	public void setPackaging (java.lang.String packaging) {
		this.packaging = packaging;
	}



	/**
	 * Return the value associated with the column: PROCESSES
	 */
	public java.lang.String getProcesses () {
		return processes;
	}

	/**
	 * Set the value related to the column: PROCESSES
	 * @param processes the PROCESSES value
	 */
	public void setProcesses (java.lang.String processes) {
		this.processes = processes;
	}



	/**
	 * Return the value associated with the column: SPECIFICATIONS
	 */
	public java.lang.String getSpecifications () {
		return specifications;
	}

	/**
	 * Set the value related to the column: SPECIFICATIONS
	 * @param specifications the SPECIFICATIONS value
	 */
	public void setSpecifications (java.lang.String specifications) {
		this.specifications = specifications;
	}




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.tornado.entity.Product)) return false;
		else {
			com.tornado.entity.Product product = (com.tornado.entity.Product) obj;
			if (null == this.getId() || null == product.getId()) return false;
			else return (this.getId().equals(product.getId()));
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