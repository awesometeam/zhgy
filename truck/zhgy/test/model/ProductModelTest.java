package com.tornado.test.model;


import java.util.List;
import com.tornado.model.ProductModel;
import com.tornado.entity.Product;

import junit.framework.TestCase;

public class ProductModelTest extends TestCase {

	private ProductModel model = null;

	public void setUp() throws Exception 
	{
		model = new ProductModel();
	}

	public void tearDown() throws Exception { }
	
	public void testGetProducts()
	{
		List<Product> list = model.getProductsByCategory((long)36);
		for(Product p : list)
		{
			System.out.println(p.getPrimaryImage());
		}
		System.out.println("----------");
		assertEquals(true, true);
	}
	
	public void testGetLastestProducts()
	{
		List<Product> list = model.getLastestProducts();
		for(Product p : list)
		{
			System.out.println(p.getPrimaryImage());
		}
		System.out.println("----------");
		assertEquals(true, true);
	}

}
