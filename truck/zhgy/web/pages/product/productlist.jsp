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
<link href="/zhgy/css/jquery.jqzoom.css" rel="stylesheet" type="text/css" />
<link href="/zhgy/css/temp.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<script type="text/javascript" src="/zhgy/js/framework/jquery.jqzoom-core.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
<script type="text/javascript">
$(document).ready(function(){  
    $('.productitem').jqzoom({  
           zoomType: 'standard',  
           alwaysOn : false,  
           zoomWidth: 200,  
           zoomHeight:200,  
           position:'right',  
           xOffset: 30,  
           yOffset:0,  
           showEffect : 'show',  
           hideEffect: 'hide'  
       });  
    $('.pp').mouseover(function(){
    	$(this).css("z-index",20);
    }).mouseout(function(){
    	$(this).css("z-index",10);
    });
 }); 
</script>
</head>
<body>
<%
	request.setAttribute("categories",new CategoryModel().getCategoryTree().getRoot().getChildren());
%>

<%@ include file="../header.jsp" %>

<div id="contentPanel" style="backgroup:#8E8E8E">
	<div id="content_wrapper">
	
		<div id="sidebar" style="width:22%;">
	        
	        <%@ include file="../module/categoryModule2.jsp" %>
	        
<!-- 	        <div id="categorytitle"></div> -->
<!-- 	        <ul id="categorylist" class="sf-menu sf-vertical"> -->
<%-- 			<c:forEach items="${categories}" var="category"> --%>
<!-- 				<li> -->
<%-- 					<a href="#">${category.data.name}</a> --%>
<%-- 					<c:if test="${fn:length(category.children) != 0}"> --%>
<!-- 						<ul> -->
<%-- 							<c:forEach items="${category.children}" var="subcategory"> --%>
<!-- 								<li> -->
<%-- 									<a href="#">${subcategory.data.name}</a> --%>
<!-- 								</li> -->
<%-- 							</c:forEach> --%>
<!-- 						</ul> -->
<%-- 					</c:if> --%>
<!-- 				</li> -->
<%-- 			</c:forEach> --%>
<!-- 			</ul> -->
	    
	    </div> 
	    
	    <div id="content" style="width:78%;">
	        
	        <div id="products" class="content_box">
	       	 	<div class="information_box_title">
	        		<ul>
	        			<li>纹身贴纸</li>
	        			<li class="last">纹身贴子分类一</li>
	        		</ul>
	        	</div>
	        	<div class="cleaner"></div>
	        	<div class="separation-line"></div>
	        	
	        	<div id="productlist">
        			<c:forEach begin="1" end="16" step="1">
	        			<div class="pp" style='position:relative;z-index: 10'>
	        				<div class="item">
	        					<a title="ZH-CS050" href="/zhgy/images/product/1/6/ZH-CS050.jpg" class="productitem"><img width="100%" height="100%" src="/zhgy/images/product/1/6/ZH-CS050.jpg"></img></a>		
	        				</div>
	        				<div class="item-cescription"> 贴纸</div>
	        				<div class="item-cescription"> ZH-CS050</div>
        				</div>
	        		</c:forEach>
	        	</div>
		        	
	        </div>
	        
	        <div class="cleaner"></div>
	    
	    </div>
		<div class="cleaner"></div>
	    
	</div>
</div>

<%@ include file="../footer.jsp" %>

</body>
</html>
