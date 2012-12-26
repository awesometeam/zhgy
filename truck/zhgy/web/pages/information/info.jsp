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
<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
<script type="text/javascript" src="/zhgy/js/module/information/info.js"></script>
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

<div id="contentPanel">
	<div id="content_wrapper">
	
		<div style=width:100%;margin-bottom:5px;">
			<img src="/zhgy/images/show/wrap1.jpg" />
		</div>
	
		<div id="sidebar">
		
			<%@ include file="../module/categoryModule2.jsp" %>
	        
	        <%@ include file="../module/searchModule.jsp" %>
	        
	        <%@ include file="../module/contactUsModule.jsp" %>
	        
	    </div> 
	    
	    <div id="content">
	        
	    	<div id="informations" class="content_box">
	        	<div class="information_box">
		        	<div  style="float:left;">
		        		<h2><a href="/zhgy/pages/information/infos.jsp">资讯</a></h2>
		        	</div>
		        	<div style="float:left;">
		        		&nbsp;&nbsp;&gt;&nbsp;&nbsp;<c:out value="${info.title}"></c:out>
		        	</div>
	<!-- 	        	<div  style="float:right;margin-top:5px;"> -->
	<!-- 	        		<h3>更多</h3> -->
	<!-- 	        	</div> -->
		        	<div style="clear:both;"></div>
	        	</div>
	        	<div id="infodetail">
	        		<p class="title"><c:out value="${info.title}"></c:out></p>
	        		<c:forEach items="${content}" var="line">
	        			<p class="line">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${line}"></c:out></p>
	        		</c:forEach>
		        	
	        	</div>
	        	<div class="cleaner"></div>
	        </div>
	        <div align="right" style="width:100%;"><a href="/zhgy/pages/information/infos.jsp">[返回]</a></div>
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
</div>

<%@ include file="../footer.jsp" %>

</body>
</html>
