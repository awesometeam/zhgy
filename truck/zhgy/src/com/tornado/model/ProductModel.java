package com.tornado.model;

import com.tornado.entity.Product;
import java.util.List;

public class ProductModel extends AbstractModel<Product>
{
	public List<Product> getProductsByCategory(Long categoryId)
	{
		StringBuffer hql = new StringBuffer();
		hql.append("select new Product(p.id,p.Name,p.Number,pic.PicturePath) ");
		hql.append("from Product p,Picture pic where pic.CorrelationId=p.Id and pic.IsPrimary=true ");
		hql.append("and p.CategoryId=").append(categoryId);
		return list(hql.toString());
	}
	
	public List<Product> getLastestProducts()
	{
		StringBuffer hql = new StringBuffer();
		hql.append("select new Product(p.Id,p.Name,p.Number,pic.PicturePath) ");
		hql.append("from Product p,Picture pic where pic.CorrelationId=p.Id and pic.IsPrimary=true ");
		hql.append("and p.Inshowcase=true");
		return list(hql.toString());
	}
	
	public Product getProduct(Long productid)
	{
		String hql = "from Product where Id="+productid;
		List<Product> result = list(hql);
		if(result == null || result.size() == 0)
			return null;
		else
			return result.get(0);
	}
}
