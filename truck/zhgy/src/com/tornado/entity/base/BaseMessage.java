package com.tornado.entity.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the message table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="message"
 */

public abstract class BaseMessage  implements Serializable {

	public static String REF = "Message";
	public static String PROP_PHONE = "Phone";
	public static String PROP_EMAIL = "Email";
	public static String PROP_DATE = "Date";
	public static String PROP_AUTHOR = "Author";
	public static String PROP_ID = "Id";
	public static String PROP_CONTENT = "Content";
	public static String PROP_TITLE = "Title";


	// constructors
	public BaseMessage () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BaseMessage (java.lang.Long id) {
		this.setId(id);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.Long id;

	// fields
	private java.lang.String author;
	private java.lang.String email;
	private java.lang.String content;
	private java.lang.String phone;
	private java.lang.String title;
	private java.util.Date date;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="sequence"
     *  column="MESSAGE_ID"
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
	 * Return the value associated with the column: EMAIL
	 */
	public java.lang.String getEmail () {
		return email;
	}

	/**
	 * Set the value related to the column: EMAIL
	 * @param email the EMAIL value
	 */
	public void setEmail (java.lang.String email) {
		this.email = email;
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
	 * Return the value associated with the column: PHONE
	 */
	public java.lang.String getPhone () {
		return phone;
	}

	/**
	 * Set the value related to the column: PHONE
	 * @param phone the PHONE value
	 */
	public void setPhone (java.lang.String phone) {
		this.phone = phone;
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
		if (!(obj instanceof com.tornado.entity.Message)) return false;
		else {
			com.tornado.entity.Message message = (com.tornado.entity.Message) obj;
			if (null == this.getId() || null == message.getId()) return false;
			else return (this.getId().equals(message.getId()));
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