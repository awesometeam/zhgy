package com.tornado.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;

import com.tornado.entity.Information;
import com.tornado.persistence.PMF;
import com.tornado.persistence.SessionFactoryHelper;

public class InformationModel extends AbstractModel<Information>
{
	protected static final int LatestInfosCount = 5;
	
	public InformationModel() {}
	
	public InformationModel(Information entity)
	{
		this.entity = entity;
	}
	
	public List<Information> getLatestInfos(int count)
	{
		String hql = "select new Information(Id,Title,Author,Date) from Information order by Date";
		Query query = SessionFactoryHelper.getSession().createQuery(hql);
		query.setFirstResult(0).setMaxResults(count);
		List<Information> result = query.list();
		return result;
	}
	
	public Information getInfo(String id)
	{
		String hql = "from Information where id=:id";
		Map params=new HashMap<String,Object>();
		params.put("id", id);
		List<Information> result = PMF.list(hql, params);
		if(result == null || result.size()  == 0)
			return null;
		else
			return result.get(0);
	}
	
	public static List<Information> getLatestInfos()
	{
		return new InformationModel().getLatestInfos(InformationModel.LatestInfosCount);
	}
	
}
