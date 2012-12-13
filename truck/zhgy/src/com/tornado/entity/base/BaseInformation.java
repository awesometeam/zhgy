package com.tornado.entity.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the information table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="information"
 */

public abstract class BaseInformation  implements Serializable {

	public static String REF = "Information";
	public static String PROP_DATE = "Date";
	public static String PROP_AUTHOR = "Author";
	public static String PROP_ID = "Id";
	public static String PROP_CONTENT = "Content";
	public static String PROP_TITLE = "Title";


	// constructors
	public BaseInformation () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseInformation (java.lang.Long id) {
		this.setId(id);
		initialize();
	}

	/**
	 * Constructor for required fields
	 */
	public BaseInformation (
		java.lang.Long id,
		java.lang.String title) {

		this.setId(id);
		this.setTitle(title);
		initialize();
	}
	
	public BaseInformation (
			java.lang.Long id,
			java.lang.String title,
			java.lang.String author,
			java.util.Date date) {

			this.setId(id);
			this.setTitle(title);
			this.setAuthor(author);
			this.setDate(date);
			initialize();
		}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.Long id;

	// fields
	private java.lang.String title;
	private java.lang.String author;
	private java.lang.String content;
	private java.util.Date date;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="increment"
     *  column="INFO_ID"
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




	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.tornado.entity.Information)) return false;
		else {
			com.tornado.entity.Information information = (com.tornado.entity.Information) obj;
			if (null == this.getId() || null == information.getId()) return false;
			else return (this.getId().equals(information.getId()));
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