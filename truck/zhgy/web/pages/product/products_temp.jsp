<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.core.util.Tree" %>
<%@ page import="com.tornado.core.util.TreeNode" %>
<%@ page import="com.tornado.entity.Category" %>
<%@ page import="com.tornado.model.CategoryModel" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="/zhgy/css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<title>产品</title>
</head>
<body>
<%@ include file="../header.jsp" %>
	
	<div id="content_wrapper">
		<div id="sidebar">
			<%@ include file="../module/categoryModule2.jsp" %>
		</div>
		<div id="content">
			<div id="introduction" class="content_box">
	        	<div class="information_box">
	            	<h2>产品</h2>
	            </div>
        	</div>
        	<iframe src="../query_products.jsp" frameborder="0"></iframe>
        	<p><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/></p>
		</div>
		<div class="cleaner"></div>
	</div>
<%@ include file="../footer.jsp" %>
</body>
</html>