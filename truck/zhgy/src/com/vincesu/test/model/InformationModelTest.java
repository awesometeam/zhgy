package com.vincesu.test.model;


import java.util.Date;

import junit.framework.TestCase;


import com.tornado.entity.Information;
import com.tornado.model.InformationModel;
import com.tornado.persistence.PMF;

public class InformationModelTest extends TestCase {

	public void setUp() throws Exception { }

	public void tearDown() throws Exception { }
	
	public void testAdd20Infos()
	{
		Information info = null;
		for(int i=0;i<20;i++)
		{
			info = new Information();
			info.setAuthor("admin");
			info.setContent("this is NO."+i+" info.");
			info.setDate(new Date());
			info.setTitle("title"+i);
			PMF.save(info);
		}
		System.out.println(new InformationModel().list().size());
	}

}
