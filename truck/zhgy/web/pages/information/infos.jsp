<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.entity.Information" %>
<%@ page import="com.tornado.model.InformationModel" %>
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
<link href="../../css/main.css" rel="stylesheet" type="text/css" />
<link href="../../css/flexslider.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../js/framework/jquery-1.8.0.js"></script>
<script type="text/javascript" src="../../js/framework/jPages.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
<script type="text/javascript" src="../../js/module/info.js"></script>
</head>
<body>
<%
	request.setAttribute("infos",new InformationModel().list());

	request.setAttribute("CompanyPhone",CompanyInfoService.getCompanyPhone());
	request.setAttribute("CompanyFax",CompanyInfoService.getCompanyFax());
	request.setAttribute("CompanyAddress",CompanyInfoService.getCompanyAddress());
	request.setAttribute("CompanyEmail",CompanyInfoService.getCompanyEmail());
	request.setAttribute("CompanyQQ",CompanyInfoService.getCompanyQQ());
	
	request.setAttribute("showcasePic",new PictureModel().getAllShowcasePic());
%>

<%@ include file="../header.jsp" %>

<div id="content_wrapper">

	<div style=width:100%;margin-bottom:5px;">
		<img src="../../images/show/wrap1.jpg" />
	</div>

<!-- 	<div class="flexslider"> -->
<!-- 	  <ul class="slides"> -->
<!-- 	  	<li><img src="../../images/show/wrap1.jpg" /></li> -->
<!-- 	  	<li><img src="../../images/show/wrap1.jpg" /></li> -->
<!-- 	  	<li><img src="../../images/show/wrap1.jpg" /></li> -->
<!--   	    <li><img src="images/show/kitchen_adventurer_lemon.jpg" /></li> -->
<!--   		<li><img src="images/show/kitchen_adventurer_donut.jpg" /></li> -->
<!--   		<li><img src="images/show/kitchen_adventurer_caramel.jpg" /></li> -->
<!-- 	  </ul> -->
<!-- 	</div> -->

	<div id="sidebar">
        
        <div class="sidebar_box">
			
			<div class="information_box">
           		<h2>搜索:</h2>
            </div>
            
            <form action="#" method="get">
            <label>您可以输入产品或资讯关键词进行搜索</label>
            <input type="text" value="" name="keyword" size="10" id="input_field" title="search" />
            <input type="submit" name="search" value="搜索" alt="search" id="submit_btn" title="Search" />
            </form>
            
            <div class="cleaner"></div>
        
        </div>
        
        <div class="sidebar_box">
			
			<div class="information_box">
           		<h2>联系我们:</h2>
            </div>
            <p>电话:<c:out value="${CompanyPhone}"></c:out></p>
            <p>传真:<c:out value="${CompanyFax}"></c:out></p>
            <p>邮箱:<c:out value="${CompanyEmail}"></c:out></p>
            <p>QQ:<c:out value="${CompanyQQ}"></c:out></p>
            
            <div class="cleaner"></div>
        
        </div>
    
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
	    	            <a href="#"><c:out value="${info.title}"/></a><span>[<fmt:formatDate value="${info.date}" pattern="yyyy-MM-dd" type="date" dateStyle="long"/>]</span>
		            </div>
	        	</c:forEach>
        	</div>
        	<div id="pager" class="pager"></div>
            
        	<div class="cleaner"></div>
        </div>
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

<%@ include file="../footer.jsp" %>

</body>
</html>
