<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.model.CompanyInfoModel" %>
<%@ page import="com.tornado.model.PictureModel" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>温州中昊工艺品有限公司</title>
<meta name="keywords" content="工艺,工艺品,温州,中昊,wenzhou,zhgy" />
<meta name="description" content="温州中昊工艺品有限公司主页" />
<link href="/zhgy/css/main.css" rel="stylesheet" type="text/css" />
<link href="/zhgy/css/feedback.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<script type="text/javascript" src="/zhgy/js/framework/CoreUtil.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
<script type="text/javascript" src="/zhgy/js/module/contactus/feedback.js"></script>
</head>
<body>
<%
	request.setAttribute("CompanyPhone",CompanyInfoModel.getCompanyPhone());
	request.setAttribute("CompanyFax",CompanyInfoModel.getCompanyFax());
	request.setAttribute("CompanyAddress",CompanyInfoModel.getCompanyAddress());
	request.setAttribute("CompanyEmail",CompanyInfoModel.getCompanyEmail());
	request.setAttribute("CompanyQQ",CompanyInfoModel.getCompanyQQ());
	
	request.setAttribute("showcasePic",new PictureModel().getAllShowcasePic());
%>

<%@ include file="../header_en_small.jsp" %>

<div id="contentPanel">
	<div id="content_wrapper">
	
		<div style=width:100%;margin-bottom:5px;">
			<img src="/zhgy/images/show/wrap1.jpg" />
		</div>
	
		<div id="sidebar">
	        
	        <%@ include file="../module/categoryModule2.jsp" %>
	    
	    </div> 
	    
	    <div id="content">
	        
	    	<div id="informations" class="content_box">
	        	<div class="information_box">
		        	<div  style="float:left;">
		        		<h2>Contact Us</h2>
		        	</div>
		        	<div style="clear:both;"></div>
	        	</div>
	        	<div id="infodetail">
	        		<div id="contactus">
	        			<table width="100%">
	        				<tr>
	        					<td width="200px" valign="top">
	        						<img alt="" src="/zhgy/images/contactus.jpg" />
	        					</td>
	        					<td>
									<div>John Chen</div>
									<div>Sells director</div>
									<div>Wenzhou Zhonghao Crafts & Gifts Co.,Ltd<br />
									     Bldg.7,Section 5<br />
									     Longgang Demonstration Industrial Zone<br />
										 Wenzhou City<br />
									     China</div>
									<div>Tel: 86-0577-59877766</div>
									<div>Fax: 86-0577-59877666</div>
									<div>Mail: <a href="mailto:wzzhgift@wzzhgift.com">wzzhgift@wzzhgift.com</a></div>
									<div>Web: <a href="http://www.zhonghaogift.com">www.zhonghaogift.com</a></div>
								</td>
							</tr>
						</table>
					</div>
	        	</div>
	        	<div class="cleaner"></div>
	        </div>
	        <div class="cleaner"></div>
	    
	    </div>
		<div class="cleaner"></div>
	    
	</div>
</div>
<%@ include file="../module/hotproducts_en.jsp" %>
<%@ include file="../footer.jsp" %>

</body>
</html>
