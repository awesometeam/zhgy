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
		List<Category> allCategory = list();
		
		int curRemainingAmount = allCategory.size();
		
		Tree tree = new Tree();
		
		Iterator<Category> iter = allCategory.iterator();
		Category category = null;
		while(iter.hasNext())
		{
			category = iter.next();
			if(category.getHavehigher()==0)
			{
				tree.getRoot().add(new TreeNode(category));
				curRemainingAmount--;
				iter.remove();
			}
		}
		
		int befRemainingAmount = curRemainingAmount;
		
		TreeNode parCategory = null;
		
		do
		{
			befRemainingAmount = curRemainingAmount;
			iter = allCategory.iterator();
			while(iter.hasNext())
			{
				category = iter.next();
				parCategory = tree.getRoot().findNode(category.getHigherid());
				if(parCategory != null)
				{
					parCategory.add(new TreeNode(category));
					curRemainingAmount--;
					iter.remove();
				}
			}
		}
		while(curRemainingAmount<befRemainingAmount && curRemainingAmount>0);
		
		return tree;
	}
}
