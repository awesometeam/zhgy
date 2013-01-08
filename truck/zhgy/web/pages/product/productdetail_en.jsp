<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.model.CategoryModel" %>
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
<link rel="stylesheet" type="text/css" href="/zhgy/css/superfish.css" media="screen">
<link rel="stylesheet" type="text/css" href="/zhgy/css/superfish-vertical.css" media="screen">
<link rel="stylesheet" type="text/css" href="/zhgy/css/product.css" >
<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<script type="text/javascript" src="/zhgy/js/framework/hoverIntent.js"></script>
<script type="text/javascript" src="/zhgy/js/framework/superfish.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
</head>
<body>

<%@ include file="../header_en_small.jsp" %>

<div id="contentPanel" style="backgroup:#8E8E8E">
	<div id="content_wrapper">
	
		<div id="sidebar">
	        
	       <%@ include file="../module/categoryModule2.jsp" %>
	    
	    </div> 
	    
	    <div id="content">
	        
	        <div id="products" class="content_box">
	        	<div class="information_box_title">
	        		
	        		<ul>
	        			<li><a href="/zhgy" >Home</a></li>
	        			<li><a href="/zhgy/ProductController.do?action=getProductList">Products</a></li>
	        			<li><a href="/zhgy/ProductController.do?action=getProductList"><c:out value="${category.name}"></c:out></a></li>
	        			<li><a href="/zhgy/ProductController.do?action=getProductList&categoryid=<c:out value="${subcategory.id}"></c:out>"><c:out value="${subcategory.name}"></c:out></a></li>
	        			<li class="last"><c:out value="${product.name}"></c:out></li>
	        		</ul>
	        	
<!-- 		        	<div  style="float:left;"> -->
<!-- 		        		<h2>纹身贴纸</h2> -->
<!-- 		        	</div> -->
<!-- 		        	<div style="float:left;"> -->
<!-- 		        		&nbsp;&nbsp;&gt;&nbsp;&nbsp;纹身贴子分类一&nbsp;&nbsp;&gt;&nbsp;&nbsp;XXXX贴纸 -->
<!-- 		        	</div> -->
<!-- 		        	<div style="clear:both;"></div> -->

	        	</div>
	        	<div class="cleaner"></div>
	        	<div class="separation-line"></div>
	        	
	        	<div id="productdetail_shadow">
	        	
	        		<div class="pic">
	        			<img width="430px" height="430px" src='<c:out value="${picture.picturePath}"></c:out>'></img>
	        		</div>
	        		<div class="detail">
	        			<table>
		        			<tr>
		        				<th>Name:</th>
		        				<td><c:out value="${product.name}"></c:out></td>
		        			</tr>
		        			<tr>
		        				<th>Item Number:</th>
		        				<td><c:out value="${product.number}"></c:out></td>
		        			</tr>
		        			<tr>
		        				<th>Size:</th>
		        				<td><c:out value="${product.specifications}"></c:out></td>
		        			</tr>
		        			<tr>
		        				<th>Packing:</th>
		        				<td><c:out value="${product.packaging}"></c:out></td>
		        			</tr>
		        			<tr>
		        				<th>Material:</th>
		        				<td><c:out value="${product.materials}"></c:out></td>
		        			</tr>
	        			</table>
	        		</div>
	        		
	        		<div class="cleaner"></div>		
	        		
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
