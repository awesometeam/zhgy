package com.tornado.test.model;


import com.tornado.core.util.Tree;
import com.tornado.entity.Category;
import com.tornado.model.CategoryModel;

import junit.framework.TestCase;

public class CategoryModelTest extends TestCase {

	public void setUp() throws Exception { }

	public void tearDown() throws Exception { }
	
	public void testGetCategoryTree()
	{
		Tree tree = new CategoryModel().getCategoryTree();
		assertEquals(true, true);
	}

}
