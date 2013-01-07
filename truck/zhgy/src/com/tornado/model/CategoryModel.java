package com.tornado.model;

import java.util.Iterator;
import java.util.List;

import com.tornado.core.util.Tree;
import com.tornado.core.util.TreeNode;
import com.tornado.entity.Category;;

public class CategoryModel extends AbstractModel<Category>
{
	protected Tree getCategoryTree(List<Category> categorys)
	{
		boolean gohead = false;
		
		Tree tree = new Tree();
		
		Iterator<Category> iter = categorys.iterator();
		Category category = null;
		while(iter.hasNext())
		{
			category = iter.next();
			if(category.getHavehigher()==0)
			{
				tree.getRoot().add(new TreeNode(category));
				iter.remove();
			}
		}
		
		TreeNode parCategory = null;
		
		do
		{
			gohead = false;
			iter = categorys.iterator();
			while(iter.hasNext())
			{
				category = iter.next();
				parCategory = tree.getRoot().findNode(category.getHigherid());
				if(parCategory != null)
				{
					parCategory.add(new TreeNode(category));
					gohead = true;
					iter.remove();
				}
			}
		}
		while(gohead);
		
		return tree;
	}
	
	public Tree getCategoryTree()
	{
		String hql = "from Category where language='cn'";
		return getCategoryTree(list(hql));
	}
	
	public Tree getCategoryTree_en()
	{
		String hql = "from Category where language='en'";
		return getCategoryTree(list(hql));
	}
	
	/**
	 * 取得上级分类
	 * @param categoryid
	 * @return
	 */
	public Category getParentCategory(Long categoryid)
	{
		Category category = getCategory(categoryid);
		
		if(category == null)
			return null;
		
		String hql = "from Category where Id="+category.getHigherid();
		List<Category> result = list(hql);
		if(result == null || result.size()==0)
			return null;
		else
			return result.get(0);
	}
	
	public Category getCategory(Long categoryid)
	{
		String hql = "from Category where Id="+categoryid;
		List<Category> result = list(hql);
		if(result == null || result.size()==0)
			return null;
		else
			return result.get(0);
	}
	
	public Category getCategoryByProduct(Long productid)
	{
		String hql = "select c from Category c,Product p where p.Id="+productid+" and c.Id=p.CategoryId";
		List<Category> result = list(hql);
		if(result == null || result.size()==0)
			return null;
		else
			return result.get(0);
	}
	
}
