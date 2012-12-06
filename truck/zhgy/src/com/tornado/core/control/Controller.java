package com.tornado.core.control;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.http.HttpServletRequest;

import com.tornado.core.view.View;

public class Controller
{
	public View execute(String methodName,Content data) throws SecurityException, NoSuchMethodException, IllegalArgumentException, IllegalAccessException, InvocationTargetException
	{
		Method method = this.getClass().getMethod(methodName, Content.class);
		return (View)method.invoke(this,data);
	}
}
