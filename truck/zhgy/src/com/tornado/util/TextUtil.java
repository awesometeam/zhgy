package com.tornado.util;

public class TextUtil
{
	public static String [] toHtmlString(String value)
	{
		return value.split(System.getProperty("line.separator"));
	}

}
