package com.tornado.service;

import java.util.List;

import com.tornado.entity.Product;
import com.tornado.model.ProductModel;

public class ProductService
{
	private static ProductModel model = new ProductModel();
	
	public static List<Product> list()
	{
		return model.list();
	}
}
