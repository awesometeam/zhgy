package com.tornado.service;

import com.tornado.entity.CompanyInfo;
import com.tornado.model.CompanyInfoModel;
import com.tornado.util.TextUtil;

public class CompanyInfoService
{
	
	public static final String companyIntroductionKeyword = "CompanyIntroduction";
	
	public static final String companyPhoneKeyword = "CompanyPhone";
	
	public static final String companyFaxKeyword = "CompanyFax";
	
	public static final String companyAddressKeyword = "CompanyAddress";
	
	public static final String CompanyEmailKeyword = "CompanyEmail";
	
	public static final String CompanyQQKeyword = "CompanyQQ";
	
	/**
	 * 获得公司简介信息
	 */
	public static String [] getCompanyIntroduction()
	{
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoService.companyIntroductionKeyword);
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
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoService.companyPhoneKeyword);
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
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoService.companyFaxKeyword);
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
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoService.companyAddressKeyword);
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
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoService.CompanyEmailKeyword);
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
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoService.CompanyQQKeyword);
		if(info == null)
			return "";
		else
			return info.getVal();
	}

}
