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
import com.tornado.model.CategoryModel;
import com.tornado.model.ProductModel;
import com.tornado.persistence.PMF;
import com.tornado.util.TextUtil;

public class ProductController extends Controller
{
	private static final String no_products_url = "pages/product/no_product_en.jsp";
	
	public View getProduct(Content content)
	{
		View view = null;
		String _productid = content.getParameter("productid");
		Long productid = null;
		Product product = null;
		Category category = null,subcategory = null;
		
		try
		{
			productid = new Long(_productid);
			product = new ProductModel().getProduct(productid);
			category = new CategoryModel().getCategoryByProduct(productid);
			subcategory = new CategoryModel().getCategory(category.getHigherid());
		}
		catch(Exception e) { }
		
		if(product == null)
		{
			view = new View(ProductController.no_products_url);
		}
		else
		{
			content.getRequest().setAttribute("product", product);
			content.getRequest().setAttribute("category", category);
			content.getRequest().setAttribute("subcategory", subcategory);
			view = new View("pages/product/productdetail_en.jsp");
		}
		
		return view;
	}
	
	public View getProductList(Content content)
	{
		View view = null;
		String _categoryid = content.getParameter("categoryid");
		Long categoryid = null;
		String mainCategory = null,subcategory = null;
		List<Product> products = null;
		
		try
		{
			categoryid = new Long(_categoryid);
			mainCategory =  new CategoryModel().getParentCategory(categoryid).getName();
			subcategory = new CategoryModel().getCategory(categoryid).getName();
			products = new ProductModel().getProductsByCategory(categoryid);
		}
		catch(Exception e) 
		{
			mainCategory = "Home";
			subcategory = "Lastest Products";
			products = new ProductModel().getLastestProducts();
		}
		
		if(products == null || products.size() == 0)
		{
			view = new View(ProductController.no_products_url);
		}
		else
		{
			view = new View("pages/product/productlist_en.jsp");
			content.getRequest().setAttribute("products", products);
			content.getRequest().setAttribute("category", mainCategory);
			content.getRequest().setAttribute("subcategory", subcategory);
		}
		
		return view;
	}
	
//	public View getProdcutsByCategory(Content content)
//	{
//		View view = new View("pages/query_products.jsp");
//		String id = content.getParameter("id");
//		
//		String hql;
//		List<Product> result = null;
//		if(id==null || "".equals(id)){
//			hql = "from Product";
//			result = PMF.list(hql);
//		}
//		else{
//			ArrayList<Long> ids = new ArrayList<Long>();
//			ids.add(new Long(id));
//			hql = "select c from Category c where c.Higherid = "+id;
//			List<Category> categories = PMF.list(hql);
//			for(int i =0;i < categories.size(); i ++){
//				ids.add(categories.get(i).getId());
//			}
//			hql = "select p from Product p,Category c where p.CategoryId = c.Id and p.CategoryId in ";
//			Map params=new HashMap<String,Object>();
//			hql += ids.toString().replace('[', '(').replace(']', ')');
//			result = PMF.list(hql);
//		}
//		
//		for(int i = 0; i < result.size(); i++){
//			getPrimaryImage(result.get(i));
//		}
//		
//		content.getRequest().setAttribute("products", result);
//		return view;
//		
//	}
//	
//	private void getPrimaryImage(Product product){
//		String hql = "from Picture p where p.CorrelationId = :id and p.IsPrimary = 1";
//		Map params=new HashMap<String,Object>();
//		params.put("id", product.getId());
//		List<Picture> result = PMF.list(hql, params);
//		if(result == null || result.size() == 0)
//			product.setPrimaryImage("/zhgy/images/NoPicture.jpg");
//		else
//			product.setPrimaryImage(result.get(0).getPicturePath());
//	}
}
