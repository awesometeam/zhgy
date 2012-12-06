package com.tornado.core.view;


public class View 
{
	
	protected String url;

	public View(String url)
	{
		this.url=url;
	}
	
	public String getUrl() 
	{
		return url;
	}

	public void setUrl(String url) 
	{
		this.url = url;
	}

	public Object getData() 
	{
		return null;
	}

}
