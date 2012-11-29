package com.tornado.service;

import java.util.List;

import com.tornado.entity.Category;
import com.tornado.model.CategoryModel;

public class CategoryService
{
	private static CategoryModel model = new CategoryModel();
	
	public static List<Category> list()
	{
		return model.list(0, 5);
	}
	
}
