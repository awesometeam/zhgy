package com.tornado.model;

import java.util.List;

import org.hibernate.Query;

import com.tornado.entity.Information;
import com.tornado.persistence.SessionFactoryHelper;

public class InformationModel extends AbstractModel<Information>
{
	
	public InformationModel() {}
	
	public InformationModel(Information entity)
	{
		this.entity = entity;
	}
	
	public List<Information> getLatestInfos()
	{
		String hql = "select new Information(Id,Title,Author,Date) from Information";
		Query query = SessionFactoryHelper.getSession().createQuery(hql);
		query.setFirstResult(0).setMaxResults(5);
		List<Information> result = query.list();
		return result;
	}
}
