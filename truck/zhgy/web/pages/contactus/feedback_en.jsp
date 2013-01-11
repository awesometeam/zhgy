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
			<img width="100%" src="/zhgy/images/show/wrap1.jpg" />
		</div>
	
		<div id="sidebar">
	        
	        <%@ include file="../module/categoryModule2.jsp" %>
	    
	    </div> 
	    
	    <div id="content">
	        
	    	<div id="informations" class="content_box">
	        	<div class="information_box">
		        	<div  style="float:left;">
		        		<h2>Feedback</h2>
		        	</div>
		        	<div style="clear:both;"></div>
	        	</div>
	        	<div id="infodetail">
	        		<div id="feedback">
						<form id="feedback-form" method="post" action="MessageController.do">
						<div class="item">
							<p class="label">Name：</p>
							<input type="text" alertmsg="Please enter your name" required="true" name="author" id="author">
							<span id="author-check" class="init">required</span>
						</div>
						<div class="item">
							<p class="label">Email：</p>
							<input type="text" alertmsg="Please enter the right Email address" ver-type="email" required="true" name="email" id="email" style="width:300px;">
							<span id="email-check" class="init">required</span>
						</div>
<!-- 						<div class="item"> -->
<!-- 							<p class="label">Phone：</p> -->
<!-- 							<input type="text" name="phone" id="phone" style="width:300px;"><p class="label"></p> -->
<!-- 							<span class="error"></span> -->
<!-- 						</div> -->
<!-- 						<div class="item"> -->
<!-- 							<p class="label">Title：</p> -->
<!-- 							<input type="text" name="title" id="title" style="width:300px;"><p class="label"></p> -->
<!-- 							<span class="error"></span> -->
<!-- 						</div> -->
						<div class="item">
							<p>Content：</p><textarea rows="8" alertmsg="Please enter your content" required="true" name="content" ></textarea>
						</div>
						<div class="item">
							<input type="submit" id="feedback-form-submit" accesskey="s" value="Send Message">
						</div>
						<input type="hidden" name="action" value="leaveMessage_en">
						<input type="hidden" name="messageid">
						</form>
					</div>
	        	</div>
	        	<div class="cleaner"></div>
	        </div>
	        <div class="cleaner"></div>
	    
	    </div>
		<div class="cleaner"></div>
	    
	    <%@ include file="../module/hotproducts_en_short.jsp" %>
	    
	</div>
</div>
<%@ include file="../footer.jsp" %>

</body>
</html>
