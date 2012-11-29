package com.tornado.model;

import java.util.List;

import org.hibernate.Query;

import com.tornado.entity.CompanyInfo;
import com.tornado.persistence.SessionFactoryHelper;

public class CompanyInfoModel extends AbstractModel<CompanyInfo>
{

	public CompanyInfoModel() { }
	
	public CompanyInfoModel(CompanyInfo entity)
	{
		this.entity = entity;
	}
	
	/**
	 * 通过key取得公司信息
	 * @param key
	 * @return
	 */
	public static CompanyInfo getCompanyInfo(String key)
	{
		String hql="from CompanyInfo as ci where ci.Keyword=:keyword";
		Query query=SessionFactoryHelper.getSession().createQuery(hql);
		query.setString("keyword", key);
		List<CompanyInfo> result = query.list();
		if(result == null || result.size()==0)
			return null;
		return result.get(0);
	}
	
	/**
	 * 通过key写入公司信息
	 * @param key
	 * @return
	 */
	public void setCompanyInfo(String val)
	{
		this.entity.setVal(val);
		String hql="from CompanyInfo as ci where ci.Keyword=:key";
		Query query=SessionFactoryHelper.getSession().createQuery(hql);
		query.setString("key", this.entity.getKeyword());
		List<CompanyInfo> result = query.list();
		if(result == null || result.size()==0)
			save(this.entity);
		else
			modify(this.entity);
	}
	
}
