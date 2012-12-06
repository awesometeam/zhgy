package com.tornado.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tornado.core.control.Content;
import com.tornado.core.control.Controller;
import com.tornado.core.view.View;
import com.tornado.entity.Information;
import com.tornado.persistence.PMF;

public class InformationController extends Controller
{
	public View getInfo(Content content)
	{
		View view = new View("pages/information/info.jsp");
		String id = content.getParameter("id");
		
		String hql = "from Information where Id=:id";
		Map params=new HashMap<String,Object>();
		params.put("id", new Long(id));
		List<Information> result = PMF.list(hql, params);
		if(result == null || result.size()  == 0)
			return view;
		
		content.getRequest().setAttribute("info", result.get(0));
		return view;
		
	}
}
