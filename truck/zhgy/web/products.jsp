<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.entity.Category" %>
<%@ page import="com.tornado.service.CategoryService" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link href="css/products.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<script type="text/javascript" src="/zhgy/js/module/products.js"></script>
<title>产品</title>
</head>
<body>
<%
	request.setAttribute("categories",CategoryService.list());
%>
<%@ include file="pages/header.jsp" %>
	<script>
		var categories = Array();
		<c:forEach items="${categories}" var="category">
			categories.push({
				'id':"${category.id}",
				'higherid':"${category.higherid}",
				'havehigher':"${category.havehigher}",
				'name':"${category.name}",
				'number':"${category.number}",
				'introduction':"${category.introduction}",
						});
		</c:forEach>
	</script>
	<div id="content_wrapper">
		<div id="sidebar">
			<div id="category-div" class="sidebar_box" >
				<div class="information_box">
					<h2>产品分类</h2>
				</div>
				<ul>
					<c:forEach items="${categories}" var="category">
						<c:if test="${category.havehigher==0}">
							<li id="category-${category.id}">
								<a href="#">${category.name}</a>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
			<div class="cleaner"></div>
		</div>
		<div id="content">
			<div id="introduction" class="content_box">
	        	<div class="information_box">
	            	<h2>产品</h2>
	            </div>
        	</div>
        	<iframe src="pages/query_products.jsp" frameborder="0"></iframe>
        	<p><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/></p>
		</div>
		<div class="cleaner"></div>
	</div>
<%@ include file="pages/footer.jsp" %>
</body>
</html>