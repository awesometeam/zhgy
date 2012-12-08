package com.tornado.model;

import java.util.List;

import org.hibernate.Query;

import com.tornado.entity.CompanyInfo;
import com.tornado.persistence.SessionFactoryHelper;
import com.tornado.util.TextUtil;

public class CompanyInfoModel extends AbstractModel<CompanyInfo>
{
	public static final String shortCompanyIntroductionKeyword = "shortCompanyIntroductionKeyword";
	
	public static final String companyIntroductionKeyword = "CompanyIntroduction";
	
	public static final String companyPhoneKeyword = "CompanyPhone";
	
	public static final String companyFaxKeyword = "CompanyFax";
	
	public static final String companyAddressKeyword = "CompanyAddress";
	
	public static final String CompanyEmailKeyword = "CompanyEmail";
	
	public static final String CompanyQQKeyword = "CompanyQQ";

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
	
	/**
	 * 获得公司简介信息
	 */
	public static String [] getCompanyIntroduction()
	{
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoModel.companyIntroductionKeyword);
		if(info == null)
			return new String [] {};
		else
			return TextUtil.toHtmlString(info.getVal());
	}
	
	/**
	 * 获得公司简短简介信息
	 */
	public static String [] getShortCompanyIntroduction()
	{
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoModel.shortCompanyIntroductionKeyword);
		if(info == null)
			return new String [] {};
		else
			return TextUtil.toHtmlString(info.getVal());
	}
	
	/**
	 * 获得公司电话
	 */
	public static String getCompanyPhone()
	{
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoModel.companyPhoneKeyword);
		if(info == null)
			return "";
		else
			return info.getVal();
	}
	
	/**
	 * 获得公司传真
	 */
	public static String getCompanyFax()
	{
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoModel.companyFaxKeyword);
		if(info == null)
			return "";
		else
			return info.getVal();
	}
	
	/**
	 * 获得公司地址
	 */
	public static String getCompanyAddress()
	{
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoModel.companyAddressKeyword);
		if(info == null)
			return "";
		else
			return info.getVal();
	}
	
	/**
	 * 获得公司EMAIL
	 */
	public static String getCompanyEmail()
	{
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoModel.CompanyEmailKeyword);
		if(info == null)
			return "";
		else
			return info.getVal();
	}
	
	/**
	 * 获得公司QQ
	 */
	public static String getCompanyQQ()
	{
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoModel.CompanyQQKeyword);
		if(info == null)
			return "";
		else
			return info.getVal();
	}
	
}
