package com.tornado.util;

public class TextUtil
{
	public static String [] toHtmlString(String value)
	{
		String [] values = value.split(System.getProperty("line.separator"));
		return values;
	}

}
