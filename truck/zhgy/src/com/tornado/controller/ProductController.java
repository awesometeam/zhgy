package com.tornado.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tornado.core.control.Content;
import com.tornado.core.control.Controller;
import com.tornado.core.view.View;
import com.tornado.entity.Information;
import com.tornado.persistence.PMF;

public class ProductController extends Controller
{
	public View getProdcutsByCategory(Content content)
	{
		View view = new View("pages/query_products.jsp");
		String id = content.getParameter("id");
		
		String hql;
		List<Information> result = null;
		if(id == ""){
			hql = "select p from Product p,Category c where p.CategoryId = c.Id and p.CategoryId = :id";Map params=new HashMap<String,Object>();
			params.put("id", new Long(id));
			result = PMF.list(hql, params);
		}
		else{
			hql = "from Product";
			result = PMF.list(hql);
		}
		
		if(result == null || result.size()  == 0)
			return view;
		
		content.getRequest().setAttribute("products", result);
		return view;
		
	}
}
