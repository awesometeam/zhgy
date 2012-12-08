package com.tornado.test.model;


import java.util.Date;

import junit.framework.TestCase;


import com.tornado.entity.Information;
import com.tornado.model.InformationModel;
import com.tornado.persistence.PMF;

public class InformationModelTest extends TestCase {

	public void setUp() throws Exception { }

	public void tearDown() throws Exception { }
	
	public void testAdd20Infos()
	{
		Information info = null;
		StringBuilder sb = new StringBuilder();
		sb.append("this is a info.").append(System.getProperty("line.separator"));
		sb.append("这是一行中文。").append(System.getProperty("line.separator"));
		sb.append("去年外贸市场为欧债、美债甚至日债的阴云所笼罩，尤其是去年下半年以来，对于海外经济减速的忧虑与日俱增，我镇不少外贸企业订单紧缩，但盛高工艺却是订单不断，创下了1.5亿元的产值。昨天下午，记者从浙江盛高工艺礼品有限公司了解到，这主要得益于企业的精准定位和一站式的营销模式。").append(System.getProperty("line.separator"));
		sb.append("据了解，我镇生产文具、礼品的外贸企业也不在少数，在去年的金融大背景下，不少企业产值不尽理想，开春后的订单量也有所减少。但在盛高工艺车间内却早已是一派繁忙景象，员工们都在赶制开春订单。企业负责人告诉记者，盛高工艺做为一支后起之秀，能接到众多海外订单，这绝对不是偶然。").append(System.getProperty("line.separator"));
		sb.append("盛高工艺是一家致力于立足欧美及日本高端市场的企业，主要是生产销售附加值较高的益智类文具产品。而且盛高工艺拥有了自己的设计研发及销售中心，并创立了自己的品牌。盛高工艺通过将普通的笔记本、笔通过再包装再设计，组合成文具礼盒套餐，这些主打的明星产品都促使企业在逆市中奋力发展。").append(System.getProperty("line.separator"));
		sb.append("除了通过市场需求设计文具套餐、益智图书等外，盛高工艺目前还成为了欧美沃尔玛超市、梅西超市的最大文具供应商。另外，企业还得到了hello kitty、迪斯尼、朵拉、超人等品牌的授权认证，制作各种名牌卡通人物的相关文具产品。这些都为企业带来了巨额的订单。今年企业刚开工不久，就已经接到了海外的800万美金的订单，这为企业开春无疑是打了一剂强心针。");
		
		for(int i=0;i<20;i++)
		{
			info = new Information();
			info.setAuthor("admin");
			
			info.setContent(sb.toString());
			info.setDate(new Date());
			info.setTitle("title"+i);
			PMF.save(info);
		}
		System.out.println(new InformationModel().list().size());
	}

}
