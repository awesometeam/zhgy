package com.tornado.core.util;

import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

public class TreeNode
{
	private TreeNode parent;

	private Vector<TreeNode> children = new Vector<TreeNode>();
	
	private Object data;

	public TreeNode()
	{
		// Nothing needed.
	}

	public TreeNode(Object object)
	{
		data = object;
	}

	public void add(TreeNode child, int index)
	{
		// Add the child to the list of children.
		if (index < 0 || index == children.size()) // then append
		{
			children.add(child);
		} 
		else if (index > children.size())
		{
			throw new IllegalArgumentException("Cannot add child to index "
					+ index + ". There are only " + children.size()
					+ " children.");
		}
		else
		{
			children.add(index, child);
		}

		child.parent = this;
	}

	public void add(TreeNode child)
	{
		add(child, -1);
	}

	public TreeNode remove(int index)
	{
		if (index < 0 || index >= children.size())
			throw new IllegalArgumentException(
					"Cannot remove element with index " + index
							+ " when there are " + children.size()
							+ " elements.");

		// Get a handle to the node being removed.
		TreeNode node = children.get(index);
		node.parent = null;

		// Remove the child from this node.
		children.remove(index);

		return node;
	}

	public void removeFromParent()
	{
		if (parent != null)
		{
			int position = this.index();
			parent.remove(position);
			parent = null;
		}
	}

	public TreeNode getParent()
	{
		return parent;
	}

	public boolean isRoot()
	{
		if (parent == null)
		{
			return true;
		} else
		{
			return false;
		}
	}

	public List<TreeNode> getChildren()
	{
		return children;
	}

	public boolean hasChildren()
	{
		if (children.size() == 0)
		{
			return false;
		} 
		else
		{
			return true;
		}
	}

	public int index()
	{
		if (parent != null)
		{
			for (int i = 0;; i++)
			{
				Object node = parent.children.get(i);

				if (this == node)
				{
					return i;
				}
			}
		}

		// Only ever make it here if this is the root node.
		return -1;
	}

	public int depth()
	{
		int depth = recurseDepth(parent, 0);
		return depth;
	}

	private int recurseDepth(TreeNode node, int depth)
	{
		if (node == null) // reached top of tree
		{
			return depth;
		} else
		{
			return recurseDepth(node.parent, depth + 1);
		}
	}

	public void setData(Object object)
	{
		data = object;
	}

	public Object getData()
	{
		return data;
	}
	
	/**
	 * user data must Implement the equals method
	 * @param key
	 * @return
	 */
	public TreeNode findNode(Object key)
	{
		if(data != null)
		{
			if(data.equals(key))
				return this;
		}
		
		for(TreeNode tn : children)
		{
			if(tn.findNode(key) != null)
				return tn;
		}
		return null;
	}
}