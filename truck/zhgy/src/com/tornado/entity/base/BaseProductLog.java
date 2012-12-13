package com.tornado.entity.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the product_log table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="product_log"
 */

public abstract class BaseProductLog  implements Serializable {

	public static String REF = "ProductLog";
	public static String PROP_MATERIALS = "Materials";
	public static String PROP_NUMBER = "Number";
	public static String PROP_MODIFY_TYPE = "ModifyType";
	public static String PROP_PROCESSES = "Processes";
	public static String PROP_SPECIFICATIONS = "Specifications";
	public static String PROP_PRODUCT_ID = "ProductId";
	public static String PROP_MODIFY_DATE = "ModifyDate";
	public static String PROP_NAME = "Name";
	public static String PROP_MODIFY_BY = "ModifyBy";
	public static String PROP_INTRODUCTION = "Introduction";
	public static String PROP_ID = "Id";
	public static String PROP_CATEGORYID = "Categoryid";
	public static String PROP_PACKAGING = "Packaging";


	// constructors
	public BaseProductLog () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseProductLog (java.lang.Long id) {
		this.setId(id);
		initialize();
	}

	/**
	 * Constructor for required fields
	 */
	public BaseProductLog (
		java.lang.Long id,
		java.lang.Long productId,
		java.lang.String name) {

		this.setId(id);
		this.setProductId(productId);
		this.setName(name);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.Long id;

	// fields
	private java.lang.Long productId;
	private java.lang.String name;
	private java.lang.String number;
	private java.lang.String specifications;
	private java.lang.String materials;
	private java.lang.String processes;
	private java.lang.String packaging;
	private java.lang.String introduction;
	private java.lang.Long categoryid;
	private java.util.Date modifyDate;
	private java.lang.Integer modifyType;
	private java.lang.String modifyBy;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="increment"
     *  column="PRODUCT_LOG_ID"
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
	 * Return the value associated with the column: PRODUCT_ID
	 */
	public java.lang.Long getProductId () {
		return productId;
	}

	/**
	 * Set the value related to the column: PRODUCT_ID
	 * @param productId the PRODUCT_ID value
	 */
	public void setProductId (java.lang.Long productId) {
		this.productId = productId;
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
	 * Return the value associated with the column: CATEGORYID
	 */
	public java.lang.Long getCategoryid () {
		return categoryid;
	}

	/**
	 * Set the value related to the column: CATEGORYID
	 * @param categoryid the CATEGORYID value
	 */
	public void setCategoryid (java.lang.Long categoryid) {
		this.categoryid = categoryid;
	}



	/**
	 * Return the value associated with the column: MODIFY_DATE
	 */
	public java.util.Date getModifyDate () {
		return modifyDate;
	}

	/**
	 * Set the value related to the column: MODIFY_DATE
	 * @param modifyDate the MODIFY_DATE value
	 */
	public void setModifyDate (java.util.Date modifyDate) {
		this.modifyDate = modifyDate;
	}



	/**
	 * Return the value associated with the column: MODIFY_TYPE
	 */
	public java.lang.Integer getModifyType () {
		return modifyType;
	}

	/**
	 * Set the value related to the column: MODIFY_TYPE
	 * @param modifyType the MODIFY_TYPE value
	 */
	public void setModifyType (java.lang.Integer modifyType) {
		this.modifyType = modifyType;
	}



	/**
	 * Return the value associated with the column: MODIFY_BY
	 */
	public java.lang.String getModifyBy () {
		return modifyBy;
	}

	/**
	 * Set the value related to the column: MODIFY_BY
	 * @param modifyBy the MODIFY_BY value
	 */
	public void setModifyBy (java.lang.String modifyBy) {
		this.modifyBy = modifyBy;
	}




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.tornado.entity.ProductLog)) return false;
		else {
			com.tornado.entity.ProductLog productLog = (com.tornado.entity.ProductLog) obj;
			if (null == this.getId() || null == productLog.getId()) return false;
			else return (this.getId().equals(productLog.getId()));
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