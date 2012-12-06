package com.tornado.core.control;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Content
{

	private HttpServletRequest request;
	private HttpServletResponse response;
	private ServletContext servletContext;

	public Content(ServletContext servletContext, HttpServletRequest request,
			HttpServletResponse response)
	{
		this.servletContext = servletContext;
		this.request = request;
		this.response = response;
	}

	public String getParameter(String name)
	{
		String str = request.getParameter(name);
		if (str != null)
		{
			str = str.trim();
		}
		return str;
	}

	public HttpServletRequest getRequest()
	{
		return request;
	}

	public void setRequest(HttpServletRequest request)
	{
		this.request = request;
	}

	public HttpServletResponse getResponse()
	{
		return response;
	}

	public void setResponse(HttpServletResponse response)
	{
		this.response = response;
	}

	public ServletContext getServletContext()
	{
		return servletContext;
	}

	public void setServletContext(ServletContext servletContext)
	{
		this.servletContext = servletContext;
	}
}