package com.tornado.core.util;

public abstract class CoreUtil
{

	public static String dealActionPath(String path){
		return path.substring(path.lastIndexOf("/")+1, path.lastIndexOf("."));
	}
	
}
