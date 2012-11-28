package com.tornado.model;

import java.util.List;

import org.hibernate.Query;

import com.tornado.entity.CompanyInfo;
import com.tornado.persistence.SessionFactoryHelper;

public class CompanyInfoModel extends AbstractModel<CompanyInfo>
{
	public  static final String companyIntroductionKeyword = "CompanyIntroduction";
	
	/**
	 * 通过key取得公司信息
	 * @param key
	 * @return
	 */
	public CompanyInfo getCompanyInfo(String key)
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
	public void setCompanyInfo(String key,String value)
	{
		CompanyInfo ci = null;
		String hql="from CompanyInfo as ci where ci.key=:key";
		Query query=SessionFactoryHelper.getSession().createQuery(hql);
		query.setString("key", key);
		List<CompanyInfo> result = query.list();
		if(result == null || result.size()==0)
		{
			ci = new CompanyInfo();
			ci.setKeyword(key);
			ci.setVal(value);
			save(ci);
		}
		else
		{
			ci = result.get(0);
			ci.setVal(value);
			modify(ci);
		}
	}
	
}
