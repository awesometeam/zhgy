package com.tornado.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tornado.core.control.Content;
import com.tornado.core.control.Controller;
import com.tornado.core.view.View;
import com.tornado.entity.Category;
import com.tornado.entity.Information;
import com.tornado.entity.Picture;
import com.tornado.entity.Product;
import com.tornado.persistence.PMF;

public class ProductController extends Controller
{
	public View getProdcutsByCategory(Content content)
	{
		View view = new View("pages/query_products.jsp");
		String id = content.getParameter("id");
		
		String hql;
		List<Product> result = null;
		if(id==null || "".equals(id)){
			hql = "from Product";
			result = PMF.list(hql);
		}
		else{
			ArrayList<Long> ids = new ArrayList<Long>();
			ids.add(new Long(id));
			hql = "select c from Category c where c.Higherid = "+id;
			List<Category> categories = PMF.list(hql);
			for(int i =0;i < categories.size(); i ++){
				ids.add(categories.get(i).getId());
			}
			hql = "select p from Product p,Category c where p.CategoryId = c.Id and p.CategoryId in ";
			Map params=new HashMap<String,Object>();
			hql += ids.toString().replace('[', '(').replace(']', ')');
			result = PMF.list(hql);
		}
		
		for(int i = 0; i < result.size(); i++){
			getPrimaryImage(result.get(i));
		}
		
		content.getRequest().setAttribute("products", result);
		return view;
		
	}
	
	private void getPrimaryImage(Product product){
		String hql = "from Picture p where p.CorrelationId = :id and p.IsPrimary = 1";
		Map params=new HashMap<String,Object>();
		params.put("id", product.getId());
		List<Picture> result = PMF.list(hql, params);
		if(result == null && result.size() == 0)
			product.setPrimaryImage("no_picture.gif");
		else
			product.setPrimaryImage(result.get(0).getPicturePath());
	}
}
