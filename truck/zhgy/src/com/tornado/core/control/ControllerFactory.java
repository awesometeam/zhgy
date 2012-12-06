package com.tornado.core.control;

import javax.servlet.http.HttpServletRequest;

import com.tornado.core.util.CoreUtil;
import com.tornado.core.control.Controller;


public class ControllerFactory 
{
	
	private static String packagePath = "com.tornado.controller.";
	
	public static void setPackagePath(String value)
	{
		if(value.endsWith("."))
			packagePath = value;
		else
			packagePath = value + ".";
	}
	
	public static String getPackagePath()
	{
		return packagePath;
	}
	
	public static Controller createController(String controllerName) throws InstantiationException, IllegalAccessException, ClassNotFoundException
	{
		String classFullName = packagePath+controllerName;
        return (Controller)Class.forName(classFullName.trim()).newInstance();
	}
	
	public static Controller createController(String packagepath, String controllerName) throws InstantiationException, IllegalAccessException, ClassNotFoundException
	{
		String classFullName = null;
		
		if(packagepath.endsWith("."))
			classFullName = packagepath+controllerName;
		else
			classFullName = packagepath+"."+controllerName;
		
        return (Controller) Class.forName(classFullName.trim()).newInstance();
	}
	
	public static Controller createController(HttpServletRequest req) throws InstantiationException, IllegalAccessException, ClassNotFoundException
	{
		return ControllerFactory.createController( CoreUtil.dealActionPath(req.getServletPath().trim()));
	}

}
