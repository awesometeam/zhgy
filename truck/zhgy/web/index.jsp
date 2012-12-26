<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.entity.Information" %>
<%@ page import="com.tornado.model.PictureModel" %>
<%@ page import="com.tornado.model.InformationModel" %>
<%@ page import="com.tornado.model.CompanyInfoModel" %>
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
<link href="/zhgy/css/jquery.xslider.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<script type="text/javascript" src="/zhgy/js/framework/jquery.Xslider.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
<script type="text/javascript" src="/zhgy/js/module/homepage.js"></script>
</head>
<body>
<%
	request.setAttribute("infos",InformationModel.getLatestInfos());
	request.setAttribute("companyIntroduction",CompanyInfoModel.getShortCompanyIntroduction());
	request.setAttribute("slideshowPic",new PictureModel().getAllSlideshowPic());
	
	request.setAttribute("showcasePic",new PictureModel().getAllShowcasePic());
%>

<%@ include file="pages/header.jsp" %>

<div id="contentPanel">
	<div id="content_wrapper">
	
		<div id="slideshow" class="slider">
			<div class="conbox">
				<c:forEach items="${slideshowPic}" var="pic">
					<div><a href="###" title='<c:out value="${pic.pictureDescription}" />' ><img width="920" height="579" alt='<c:out value="${pic.pictureDescription}" />' src='<c:out value="${pic.picturePath}" />'></a></div>
				</c:forEach>
			</div>
	
			<div class="slideshow-switcher">
				<a href="#" class="slideshow-cur">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
			</div>
		</div>
	
<!-- 		<div id="sidebar"> -->
		
<%-- 	        <%@ include file="pages/module/searchModule.jsp" %> --%>
	        
<%-- 	        <%@ include file="pages/module/companyCharismaModule.jsp" %> --%>
	        
<%-- 	        <%@ include file="pages/module/contactUsModule.jsp" %> --%>
	    
<!-- 	    </div>  -->
	    
<!-- 	    <div id="content"> -->
	    
<!-- 	    	<div id="introduction" class="content_box"> -->
<!-- 	        	<div class="information_box"> -->
<!-- 	            	<div  style="float:left;"> -->
<!-- 		        		<h2>公司简介</h2> -->
<!-- 		        	</div> -->
<!-- 		        	<div  style="float:right;margin-top:5px;"> -->
<!-- 		        		<h3><a href="/zhgy/pages/introduction/introduction.jsp">查看详细</a></h3> -->
<!-- 		        	</div> -->
<!-- 		        	<div style="clear:both;"></div> -->
<!-- 	            </div> -->
<!-- 	            <div> -->
<!-- 		            <div  style="float:left;width:70%;"> -->
<%-- 			            <c:forEach items="${companyIntroduction}" var="line"> --%>
<%-- 			            	<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<c:out value="${line}" /></p> --%>
<%-- 			        	</c:forEach> --%>
<!-- 		        	</div> -->
<!-- 		        	<div  style="float:right;width:25%;"> -->
<!-- 		        		<a href="/zhgy/pages/introduction/introduction.jsp"> -->
<!-- 		        			<img alt="" src="/zhgy/images/companyPic/1.jpg" width="160px" height="120px"></img> -->
<!-- 		        		</a> -->
<!-- 		        	</div> -->
<!-- 		        	<div style="clear:both;"></div> -->
<!-- 	        	</div> -->
<!-- 	        </div> -->
	        
<!-- 	    	<div id="informations" class="content_box"> -->
<!-- 	        	<div class="information_box"> -->
<!-- 		        	<div  style="float:left;"> -->
<!-- 		        		<h2>最新资讯</h2> -->
<!-- 		        	</div> -->
<!-- 		        	<div  style="float:right;margin-top:5px;"> -->
<!-- 		        		<h3><a href="pages/information/infos.jsp">更多</a></h3> -->
<!-- 		        	</div> -->
<!-- 		        	<div style="clear:both;"></div> -->
<!-- 	        	</div> -->
<%-- 	        	<c:forEach items="${infos}" var="info"> --%>
<!-- 	        		<div class="information_box"> -->
<%-- 	    	            <a href='/zhgy/InformationController.do?action=getInfo&id=<c:out value="${info.id}" />'><c:out value="${info.title}"/></a><span>[<fmt:formatDate value="${info.date}" pattern="yyyy-MM-dd" type="date" dateStyle="long"/>]</span> --%>
<!-- 		            </div> -->
<%-- 	        	</c:forEach> --%>
	            
<!-- 	        	<div class="cleaner"></div> -->
<!-- 	        </div> -->
	    
<!-- 	    </div> -->
	    
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
</div>

<%@ include file="pages/footer.jsp" %>

</body>
</html>
