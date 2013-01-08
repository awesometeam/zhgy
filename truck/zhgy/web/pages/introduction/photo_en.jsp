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
<link href="/zhgy/css/photo.css" type="text/css" rel="stylesheet" media="screen" />

<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<script defer src="/zhgy/js/framework/jquery.flexslider.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
</head>
<body>

<%@ include file="../header_en.jsp" %>

<div id="contentPanel">
	<div id="content_wrapper">
	
		<div style=width:100%;margin-bottom:5px;">
			<img src="/zhgy/images/show/wrap1.jpg" />
		</div>
	
		<div id="sidebar">
	        
	        <%@ include file="../module/categoryModule2.jsp" %>
	    
	    </div> 
	    
	    <div id="content">

			<div id="products" class="content_box">
	       	 	<div class="information_box_title">
	        		<ul>
	        			<li>Home</li>
	        			<li class="last">Photo</li>
	        		</ul>
	        	</div>
	        	<div class="cleaner"></div>
	        	<div class="separation-line"></div>
	        	
	        	<div id="company-photo">
	        		<c:forEach begin="1" end="3" step="1">
	        			<div>
	        				<ul>
			        			<c:forEach begin="1" end="3" step="1">
				        			<li>
				        				<div class="item">
				        					<a title="ZH-CS050" href="/zhgy/images/companyPic/4.jpg" class="productitem"><img width="100%" height="100%" src="/zhgy/images/companyPic/4.jpg"></img></a>		
				        				</div>
				        				<div class="item-cescription">phote description</div>
			        				</li>
			        			</c:forEach>
		        			</ul>
	        			</div>
	        		</c:forEach>
	        	</div>
			
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
