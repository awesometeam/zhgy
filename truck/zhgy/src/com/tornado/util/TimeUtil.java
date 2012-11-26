package com.tornado.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import java.util.Vector;

public class TimeUtil {
	
	private static Vector<String> formatStrVector;
	
	static {
		formatStrVector = new Vector<String>();
	}
	
	public static void init() {}
	
	public static Date toDate(String str,String formatStr) throws ParseException
	{
		SimpleDateFormat dateformat = new SimpleDateFormat(formatStr);
		return dateformat.parse(str);
	}
	
	public static String toString(Date date,String formatStr)
	{
		return TimeUtil.toString(date, formatStr, "Asia/Shanghai");
	}
	
	public static String toString(Date date,String formatStr,String timezone)
	{
		TimeZone timeZoneSH = TimeZone.getTimeZone(timezone);
		SimpleDateFormat dateformat = new SimpleDateFormat(formatStr);
		dateformat.setTimeZone(timeZoneSH);
		return dateformat.format(date);
	}

}
