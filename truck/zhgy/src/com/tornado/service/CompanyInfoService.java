package com.tornado.service;

import com.tornado.entity.CompanyInfo;
import com.tornado.model.CompanyInfoModel;

public class CompanyInfoService
{
	
	public  static final String companyIntroductionKeyword = "CompanyIntroduction";
	
	public static String getCompanyIntroduction()
	{
		CompanyInfo info = CompanyInfoModel.getCompanyInfo(CompanyInfoService.companyIntroductionKeyword);
		if(info == null)
			return "";
		else
			return info.getVal();
	}

}
