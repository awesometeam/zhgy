package com.tornado.entity.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the information_log table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="information_log"
 */

public abstract class BaseInformationLog  implements Serializable {

	public static String REF = "InformationLog";
	public static String PROP_MODIFY_BY = "ModifyBy";
	public static String PROP_DATE = "Date";
	public static String PROP_AUTHOR = "Author";
	public static String PROP_MODIFY_TYPE = "ModifyType";
	public static String PROP_ID = "Id";
	public static String PROP_INFO_ID = "InfoId";
	public static String PROP_CONTENT = "Content";
	public static String PROP_MODIFY_DATE = "ModifyDate";
	public static String PROP_TITLE = "Title";


	// constructors
	public BaseInformationLog () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseInformationLog (java.lang.Long id) {
		this.setId(id);
		initialize();
	}

	/**
	 * Constructor for required fields
	 */
	public BaseInformationLog (
		java.lang.Long id,
		java.lang.Long infoId,
		java.lang.Integer modifyType) {

		this.setId(id);
		this.setInfoId(infoId);
		this.setModifyType(modifyType);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.Long id;

	// fields
	private java.lang.Long infoId;
	private java.lang.String title;
	private java.lang.String author;
	private java.lang.String content;
	private java.util.Date date;
	private java.util.Date modifyDate;
	private java.lang.Integer modifyType;
	private java.lang.String modifyBy;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="increment"
     *  column="INFO_LOG_ID"
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
	 * Return the value associated with the column: INFO_ID
	 */
	public java.lang.Long getInfoId () {
		return infoId;
	}

	/**
	 * Set the value related to the column: INFO_ID
	 * @param infoId the INFO_ID value
	 */
	public void setInfoId (java.lang.Long infoId) {
		this.infoId = infoId;
	}



	/**
	 * Return the value associated with the column: TITLE
	 */
	public java.lang.String getTitle () {
		return title;
	}

	/**
	 * Set the value related to the column: TITLE
	 * @param title the TITLE value
	 */
	public void setTitle (java.lang.String title) {
		this.title = title;
	}



	/**
	 * Return the value associated with the column: AUTHOR
	 */
	public java.lang.String getAuthor () {
		return author;
	}

	/**
	 * Set the value related to the column: AUTHOR
	 * @param author the AUTHOR value
	 */
	public void setAuthor (java.lang.String author) {
		this.author = author;
	}



	/**
	 * Return the value associated with the column: CONTENT
	 */
	public java.lang.String getContent () {
		return content;
	}

	/**
	 * Set the value related to the column: CONTENT
	 * @param content the CONTENT value
	 */
	public void setContent (java.lang.String content) {
		this.content = content;
	}



	/**
	 * Return the value associated with the column: DATE
	 */
	public java.util.Date getDate () {
		return date;
	}

	/**
	 * Set the value related to the column: DATE
	 * @param date the DATE value
	 */
	public void setDate (java.util.Date date) {
		this.date = date;
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
		if (!(obj instanceof com.tornado.entity.InformationLog)) return false;
		else {
			com.tornado.entity.InformationLog informationLog = (com.tornado.entity.InformationLog) obj;
			if (null == this.getId() || null == informationLog.getId()) return false;
			else return (this.getId().equals(informationLog.getId()));
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