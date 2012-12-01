package com.tornado.service;

import java.util.List;

import org.hibernate.Query;

import com.tornado.entity.Information;
import com.tornado.model.InformationModel;
import com.tornado.persistence.SessionFactoryHelper;

public class InformationService
{
	public static List<Information> getLatestInfos()
	{
		return new InformationModel().getLatestInfos();
	}
}
