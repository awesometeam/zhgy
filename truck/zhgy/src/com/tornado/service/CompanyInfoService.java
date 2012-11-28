package com.tornado.service;

import com.tornado.entity.CompanyInfo;
import com.tornado.model.CompanyInfoModel;

public class CompanyInfoService
{
	public static CompanyInfoModel model = new CompanyInfoModel();
	
	public static String getCompanyIntroduction()
	{
		CompanyInfo info = model.getCompanyInfo(CompanyInfoModel.companyIntroductionKeyword);
		if(info == null)
			return "";
		else
			return info.getVal();
	}

}
