package com.tornado.entity.base;

import java.io.Serializable;


/**
 * This is an object that contains data related to the PICTURE table.
 * Do not modify this class because it will be overwritten if the configuration file
 * related to this class is modified.
 *
 * @hibernate.class
 *  table="PICTURE"
 */

public abstract class BasePicture  implements Serializable {

	public static String REF = "Picture";
	public static String PROP_CORRELATION_ID = "CorrelationId";
	public static String PROP_PICTURE_DESCRIPTION = "PictureDescription";
	public static String PROP_ID = "Id";
	public static String PROP_PICTURE_PATH = "PicturePath";


	// constructors
	public BasePicture () {
		initialize();
	}

	/**
	 * Constructor for primary key
	 */
	public BasePicture (java.lang.Long id) {
		this.setId(id);
		initialize();
	}

	/**
	 * Constructor for required fields
	 */
	public BasePicture (
		java.lang.Long id,
		java.lang.String picturePath) {

		this.setId(id);
		this.setPicturePath(picturePath);
		initialize();
	}

	protected void initialize () {}



	private int hashCode = Integer.MIN_VALUE;

	// primary key
	private java.lang.Long id;

	// fields
	private java.lang.String picturePath;
	private java.lang.String pictureDescription;
	private java.lang.Long correlationId;
	private java.lang.Short isPrimary;



	/**
	 * Return the unique identifier of this class
     * @hibernate.id
     *  generator-class="sequence"
     *  column="PICTURE_ID"
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
	 * Return the value associated with the column: PICTURE_PATH
	 */
	public java.lang.String getPicturePath () {
		return picturePath;
	}

	/**
	 * Set the value related to the column: PICTURE_PATH
	 * @param picturePath the PICTURE_PATH value
	 */
	public void setPicturePath (java.lang.String picturePath) {
		this.picturePath = picturePath;
	}



	/**
	 * Return the value associated with the column: PICTURE_DESCRIPTION
	 */
	public java.lang.String getPictureDescription () {
		return pictureDescription;
	}

	/**
	 * Set the value related to the column: PICTURE_DESCRIPTION
	 * @param pictureDescription the PICTURE_DESCRIPTION value
	 */
	public void setPictureDescription (java.lang.String pictureDescription) {
		this.pictureDescription = pictureDescription;
	}



	/**
	 * Return the value associated with the column: CORRELATION_ID
	 */
	public java.lang.Long getCorrelationId () {
		return correlationId;
	}

	/**
	 * Set the value related to the column: CORRELATION_ID
	 * @param correlationId the CORRELATION_ID value
	 */
	public void setCorrelationId (java.lang.Long correlationId) {
		this.correlationId = correlationId;
	}


	public java.lang.Short getIsPrimary () {
		return isPrimary;
	}

	public void setIsPrimary (java.lang.Short isPrimary) {
		this.isPrimary = isPrimary;
	}

	public boolean equals (Object obj) {
		if (null == obj) return false;
		if (!(obj instanceof com.tornado.entity.Picture)) return false;
		else {
			com.tornado.entity.Picture picture = (com.tornado.entity.Picture) obj;
			if (null == this.getId() || null == picture.getId()) return false;
			else return (this.getId().equals(picture.getId()));
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