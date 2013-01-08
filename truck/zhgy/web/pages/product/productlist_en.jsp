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
<script type="text/javascript" src="/zhgy/js/framework/jPages.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
<script type="text/javascript">
$(document).ready(function(){  
	
    $('.productitem').jqzoom({  
           zoomType: 'standard',  
           alwaysOn : false,  
           zoomWidth: 300,  
           zoomHeight:300,  
           position:'right',  
           xOffset: 15,  
           yOffset: 0,  
           showEffect : 'show',
           hideEffect: 'hide'  
       });  
    
    $('.productitem').click(function(){
		window.location.href="ProductController.do?action=getProduct&productid="+$(this).attr("id");
    	return false;
    });
    
    $('#productlist li').mouseover(function(){
    	$(this).css("z-index",11);
    }).mouseout(function(){
    	$(this).css("z-index",10);
    });
    
 
    $("#pager").jPages({
        containerID  : "itemContainer",
		first: '首页',
		last: '尾页',
		previous: '上页',
		next: '下页',
        perPage: 16,
        startPage: 1,
//        startRange: 2,
//        midRange: 1,
//        endRange: 2,
//		animation: 'wobble',
//		keyBrowse: true,
		callback    : function( pages, items ){
//			alert(pages);
//			alert(items);
		}
    });
    
 }); 
</script>
</head>
<body>

<%@ include file="../header_en_small.jsp" %>

<div id="contentPanel" style="backgroup:#8E8E8E">
	<div id="content_wrapper">
	
		<div id="sidebar" style="width:22%;">
	        
	        <%@ include file="../module/categoryModule2.jsp" %>
	        
	    </div> 
	    
	    <div id="content" style="width:78%;">
	        
	        <div id="products" class="content_box">
	       	 	<div class="information_box_title">
	        		<ul>
	        			<li><c:out value="${category}"></c:out></li>
	        			<li class="last"><c:out value="${subcategory}"></c:out></li>
	        		</ul>
	        	</div>
	        	<div class="cleaner"></div>
	        	<div class="separation-line"></div>
	        	
	        	<div id="productlist">
	        			<div>
	        				<ul id="itemContainer">
			        			<c:forEach items="${products}" var="product">
				        			<li style="position:relative;z-index: 10">
				        				<div class="item">
				        					<a title='<c:out value="${product.name}"></c:out>' 
				        					   href='<c:out value="${product.primaryImage}"></c:out>' 
				        					   id='<c:out value="${product.id}"></c:out>'
				        					   class="productitem">
				        					   	<img width="100%" 
				        					   		 height="100%" 
				        					   		 src='<c:out value="${product.primaryImage}"></c:out>'>
				        					    </img>
				        					</a>
				        				</div>
				        				<div class="item-cescription"><c:out value="${product.name}"></c:out></div>
				        				<div class="item-cescription"><c:out value="${product.number}"></c:out></div>
			        				</li>
			        			</c:forEach>
		        			</ul>
	        			</div>
<!-- 	        			<div class="cleaner"></div> -->
<!-- 	        			<div id="pager" class="pager"></div> -->
<!-- 	        			<div class="cleaner"></div> -->
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
