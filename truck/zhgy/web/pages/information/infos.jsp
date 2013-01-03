<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.model.InformationModel" %>
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
<script type="text/javascript" src="/zhgy/js/framework/jPages.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
<script type="text/javascript" src="/zhgy/js/module/information/infos.js"></script>
</head>
<body>
<%
	request.setAttribute("infos",new InformationModel().list());

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
			<img src="../../images/show/wrap1.jpg" />
		</div>
	
		<div id="sidebar">
	        
	        <%@ include file="../module/categoryModule2.jsp" %>
	        
	    </div> 
	    
	    <div id="content">
	        
	    	<div id="informations" class="content_box">
	        	<div class="information_box">
		        	<div  style="float:left;">
		        		<h2>最新资讯</h2>
		        	</div>
	<!-- 	        	<div  style="float:right;margin-top:5px;"> -->
	<!-- 	        		<h3>更多</h3> -->
	<!-- 	        	</div> -->
		        	<div style="clear:both;"></div>
	        	</div>
	        	<div id="itemContainer">
		        	<c:forEach items="${infos}" var="info">
		        		<div class="information_box">
		    	            <a href='/zhgy/InformationController.do?action=getInfo&id=<c:out value="${info.id}" />'><c:out value="${info.title}"/></a><span>[<fmt:formatDate value="${info.date}" pattern="yyyy-MM-dd" type="date" dateStyle="long"/>]</span>
			            </div>
		        	</c:forEach>
	        	</div>
	        	<div id="pager" class="pager"></div>
	            
	        	<div class="cleaner"></div>
	        </div>
	        <div class="cleaner"></div>
	    
	    </div>
		<div class="cleaner"></div>
	    
	</div>
</div>

<%@ include file="../module/hotproducts.jsp" %>

<%@ include file="../footer.jsp" %>

</body>
</html>
