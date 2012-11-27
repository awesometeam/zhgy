package com.tornado.service;

import java.util.List;

import com.tornado.entity.Information;
import com.tornado.model.InformationModel;

public class InformationService
{
	private static InformationModel model = new InformationModel();
	
	public static List<Information> getLastInfos()
	{
		return model.list(0, 5);
	}
	
}
