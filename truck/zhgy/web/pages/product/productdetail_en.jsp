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
<link rel="stylesheet" type="text/css" href="/zhgy/css/temp.css" media="screen">
<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<script type="text/javascript" src="/zhgy/js/framework/hoverIntent.js"></script>
<script type="text/javascript" src="/zhgy/js/framework/superfish.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
<script type="text/javascript">

		// initialise plugins
		jQuery(function(){
			jQuery('ul.sf-menu').superfish({
				animation: 	{height:'show'},
		        delay:		300,
		        speed:		'fast',
		        autoArrows:	true
			});
		});

</script>
</head>
<body>
<%
	request.setAttribute("categories",new CategoryModel().getCategoryTree().getRoot().getChildren());
%>

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
	        			<li>Home</li>
	        			<li>Products</li>
	        			<li>Tattoo Sticker</li>
	        			<li>Tattoo Sticker_1</li>
	        			<li class="last">a example Tattoo Sticker</li>
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
	        	
	        	<div id="productdetail">
	        	
	        		<div class="pic">
	        			<div>
	        				<img width="350px" height="350px" src="/zhgy/images/product/1/6/ZH-CS050.jpg"></img>
	        			</div>
	        		</div>
	        		<div class="detail">
	        			<table>
		        			<tr>
		        				<th>Name:</th>
		        				<td>name</td>
		        			</tr>
		        			<tr>
		        				<th>Item Number:</th>
		        				<td>item number</td>
		        			</tr>
		        			<tr>
		        				<th>Size:</th>
		        				<td>size</td>
		        			</tr>
		        			<tr>
		        				<th>Packing:</th>
		        				<td>packing</td>
		        			</tr>
		        			<tr>
		        				<th>Material:</th>
		        				<td>material</td>
		        			</tr>
	        			</table>
	        		</div>
	        		
	        		<div class="cleaner"></div>		
	        		
	        	</div>
		        	
	        </div>
	        
	        <div class="cleaner"></div>
	    
	    </div>
		<div class="cleaner"></div>
	    
	</div>
</div>
<%@ include file="../module/hotproducts_en.jsp" %>
<%@ include file="../footer.jsp" %>

</body>
</html>
