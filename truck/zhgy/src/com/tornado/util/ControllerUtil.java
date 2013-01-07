package com.tornado.util;

import com.tornado.core.control.Content;

public class ControllerUtil
{
	private static final String lan_en = "en";
	private static final String lan_cn = "cn";
	
	public static String DetermineLanguage(Content content)
	{
		if(content.getParameter("lan") == null || content.getParameter("lan").equals("") )
			return ControllerUtil.lan_en;
		else
			return content.getParameter("lan");
	}

}
