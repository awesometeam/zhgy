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
<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>



<link href="css/main.css" rel="stylesheet" type="text/css" />

<title>产品</title>
</head>
<body>

<%@ include file="pages/header.jsp" %>
	
<div id="contentPanel">
	
	<div id="content_wrapper">
		<div id="sidebar">
			<%@ include file="pages/module/categoryModule2.jsp" %>
			<div class="cleaner"></div>
		</div>
		<div id="content">
			<div id="introduction" class="content_box">
	        	<div class="information_box">
	            	<h2>产品</h2>
	            </div>
        		<div id="products_showbox"></div>
        	</div>
		</div>
		<div class="cleaner"></div>
	</div>
	
</div>
<%@ include file="pages/footer.jsp" %>
</body>
</html>