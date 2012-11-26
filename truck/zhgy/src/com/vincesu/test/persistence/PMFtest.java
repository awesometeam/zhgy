package com.vincesu.test.persistence;


import java.math.BigInteger;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import junit.framework.TestCase;
import junit.framework.Assert;

import com.tornado.persistence.PMF;

import com.tornado.entity.Picture;

public class PMFtest extends TestCase {

	public void setUp() throws Exception {
	}

	public void tearDown() throws Exception {
	}
	
	public void testGet()
	{
		BigInteger count = (BigInteger) PMF.get("SELECT COUNT(1) FROM PICTURE",null).get(0);
		System.out.println(count);
		
		Picture pic = new Picture(null, "test_path"); 
		
		PMF.save(pic);
		List<Picture> data = PMF.get(
			"SELECT * FROM PICTURE WHERE PICTURE_ID="+pic.getId(),
			new Class [] {Picture.class}
		);
		assertEquals(data.get(0).getClass().getName(),Picture.class.getName());
		assertEquals(data.get(0).getPicturePath(),"test_path");
		PMF.remove(pic);
	}

}
