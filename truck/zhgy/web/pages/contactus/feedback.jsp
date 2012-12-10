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

<%@ include file="../header.jsp" %>

<div id="content_wrapper">

	<div style=width:100%;margin-bottom:5px;">
		<img src="/zhgy/images/show/wrap1.jpg" />
	</div>

	<div id="sidebar">
        
        <%@ include file="../module/searchModule.jsp" %>
        
        <%@ include file="../module/contactUsModule.jsp" %>
    
    </div> 
    
    <div id="content">
        
    	<div id="informations" class="content_box">
        	<div class="information_box">
	        	<div  style="float:left;">
	        		<h2>在线留言</h2>
	        	</div>
	        	<div style="clear:both;"></div>
        	</div>
        	<div id="infodetail">
        		<div id="feedback">
					<form id="feedback-form" method="post" action="MessageController.do">
					<div class="item">
						<p class="label">姓名：</p><input type="text" alertmsg="请填写姓名" required="true" name="author" id="author">(*必填)
					</div>
					<div class="item">
						<p class="label">Email：</p><input type="text" alertmsg="请填写Email" required="true" name="email" id="email" style="width:300px;"><p class="label"></p>(*必填)
					</div>
					<div class="item">
						<p class="label">电话：</p><input type="text" alertmsg="请填写电话" required="true" name="phone" id="phone" style="width:300px;"><p class="label"></p>(*必填)
					</div>
					<div class="item">
						<p class="label">主题：</p><input type="text" name="title" id="title" style="width:300px;"><p class="label"></p>
					</div>
					<div class="item">
						<p>内容(*必填)：</p><textarea rows="5" alertmsg="请填写内容" required="true" name="content" ></textarea>
					</div>
					<div class="item">
						<input type=submit id="feedback-form-submit" accesskey="s" id="feedback-submit" value="留言">
					</div>
					<input type="hidden" name="action" value="leaveMessage">
					<input type="hidden" name="messageid">
					</form>
				</div>
        	</div>
        	<div class="cleaner"></div>
        </div>
        <div class="cleaner"></div>
    
    </div>
	<div class="cleaner"></div>
	
	<div class="hotproduct_box">
        
        	<div class="information_box">
        		<h2 id="hotproducttitle">热门产品</h2>
        	</div>
        	
        	<div id="hotproduct">
		    	<ul id="hotproductul">
		        
		        	<c:forEach begin="0" end="2" >
		        		<c:forEach items="${showcasePic}" var="pic">
		        			<li><a href='/zhgy/product.jsp?<c:out value="${pic.correlationId}"/>'><img src='<c:out value="${pic.picturePath}"/>' alt='<c:out value="${pic.pictureDescription}"/>' width='150' height='150' /></a></li>
		        		</c:forEach>
		        	</c:forEach>
		        </ul>
		    </div>
        
        	<div class="cleaner"></div>
        </div>
    
    <div class="cleaner"></div>
    
</div>

<%@ include file="../footer.jsp" %>

</body>
</html>
