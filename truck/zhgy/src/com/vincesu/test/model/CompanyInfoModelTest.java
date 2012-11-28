package com.vincesu.test.model;


import java.math.BigInteger;
import java.util.List;

import junit.framework.TestCase;

import com.tornado.model.CompanyInfoModel;
import com.tornado.persistence.PMF;

import com.tornado.entity.Category;
import com.tornado.entity.CompanyInfo;
import com.tornado.entity.InformationLog;
import com.tornado.entity.Picture;

public class CompanyInfoModelTest extends TestCase {

	public void setUp() throws Exception { }

	public void tearDown() throws Exception { }
	
	public void testGetCompanyInfo()
	{
		
		CompanyInfo companyInfo = new CompanyInfo();
        companyInfo.setKeyword(CompanyInfoModel.companyIntroductionKeyword);
        companyInfo.setVal("  温州中昊工艺品有限公司座落于中国印刷城--温州龙港,是专业从事研发、制造和销售各种促销礼品和包装产品的企业。公司自成立以来，本着\"以质量赢市场、以创新促发展、以服务强信誉、以管理增效益\"的企业宗旨，走出了一条自主创新、稳定发展、走向品牌的坚实之路。先后引进世界一流印刷设备\"海德堡\"CD74+UV全数控印刷机器，采用国际环保型UV油墨，做到与国外先进厂家同等水平。公司同时配备了其他印刷设备和各种一流的自动包装机。");
        PMF.save(companyInfo);
        
		CompanyInfo result = new CompanyInfoModel().getCompanyInfo(CompanyInfoModel.companyIntroductionKeyword);
		
		if(result == null)
			assertFalse(false);
		else
			assertEquals(companyInfo.getVal(), result.getVal());
	}

}
