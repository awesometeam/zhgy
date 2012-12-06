package com.tornado.core.control;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tornado.core.view.View;

public class ControlServlet extends HttpServlet
{
	public void init() throws ServletException
	{
		super.init();
	}
	
	public void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		doPost(req,resp);
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException 
	{
		Content content = new Content(getServletContext(), req, resp);
		String method = req.getParameter("action");
		Controller controller = null;
		View view = null;
		
		try
		{
			controller = ControllerFactory.createController(req);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		try
		{
			view = controller.execute(method, content);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		req.getRequestDispatcher(view.getUrl()).forward(content.getRequest(), content.getResponse());
		
	}

}
