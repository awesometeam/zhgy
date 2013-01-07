<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.model.ProductModel" %>
<%@ page import="com.tornado.entity.Product" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>温州中昊工艺品有限公司</title>
<meta name="keywords" content="工艺,工艺品,温州,中昊,wenzhou,zhgy" />
<meta name="description" content="温州中昊工艺品有限公司主页" />
<link href="/zhgy/css/main.css" rel="stylesheet" type="text/css" />
<link href="/zhgy/css/jquery.jqzoom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<script type="text/javascript" src="/zhgy/js/framework/jquery.jqzoom-core.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
</head>
<body>

<%@ include file="../header_en_small.jsp" %>

<div id="contentPanel" style="backgroup:#8E8E8E">
	<div id="content_wrapper">
	
		<div id="sidebar" style="width:22%;">
	        
	        <%@ include file="../module/categoryModule2.jsp" %>
	        
	    </div> 
	    
	    <div id="content" style="width:78%;">
	        
	        <div id="no-products">
	        	NO PRODUCTS
	        </div>
	        
	        <div class="cleaner"></div>
	    
	    </div>
		<div class="cleaner"></div>
	    
	</div>
</div>

<%@ include file="../footer.jsp" %>

</body>
</html>
