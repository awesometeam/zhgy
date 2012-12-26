package com.tornado.model;

import java.util.Iterator;
import java.util.List;

import com.tornado.core.util.Tree;
import com.tornado.core.util.TreeNode;
import com.tornado.entity.Category;;

public class CategoryModel extends AbstractModel<Category>
{
	public Tree getCategoryTree()
	{
		boolean gohead = false;
		
		List<Category> allCategory = list();
		
		Tree tree = new Tree();
		
		Iterator<Category> iter = allCategory.iterator();
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
			iter = allCategory.iterator();
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
}
