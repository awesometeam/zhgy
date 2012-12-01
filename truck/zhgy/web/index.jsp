<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.entity.Information" %>
<%@ page import="com.tornado.service.InformationService" %>
<%@ page import="com.tornado.service.CompanyInfoService" %>
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
<link href="/zhgy/css/flexslider.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<script type="text/javascript" src="/zhgy/js/framework/jquery.flexslider.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
<script type="text/javascript" src="/zhgy/js/module/homepage.js"></script>
</head>
<body>
<%
	request.setAttribute("infos",InformationService.getLatestInfos());
	request.setAttribute("companyIntroduction",CompanyInfoService.getCompanyIntroduction());
%>

<%@ include file="pages/header.jsp" %>

<div id="content_wrapper">

	<div class="flexslider">
	  <ul class="slides">
	  	<li><img src="images/show/wrap1.jpg" /></li>
	  	<li><img src="images/show/wrap1.jpg" /></li>
	  	<li><img src="images/show/wrap1.jpg" /></li>
<!--   	    <li><img src="images/show/kitchen_adventurer_lemon.jpg" /></li> -->
<!--   		<li><img src="images/show/kitchen_adventurer_donut.jpg" /></li> -->
<!--   		<li><img src="images/show/kitchen_adventurer_caramel.jpg" /></li> -->
	  </ul>
	</div>

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
           		<h2>公司风采:</h2>
            </div>
            
            <label>这是公司风采模块</label>
            <label>将以图片形式显示</label>
            
            <div class="cleaner"></div>
        </div>
        
        <div class="sidebar_box">
			
			<div class="information_box">
           		<h2>联系我们:</h2>
            </div>
            <p>电话:0577-59877566</p>
            <p>传真:0577-59877766</p>
            <p>邮箱:wzzhgift@wzzhgift.com</p>
            <p>QQ:87525384</p>
            
            <div class="cleaner"></div>
        
        </div>
    
    </div> 
    
    <div id="content">
    
    	<div id="introduction" class="content_box">
        	<div class="information_box">
            	<h2>公司简介</h2>
            </div>
            <p><c:out value="${companyIntroduction}" /></p>
        </div>
        
    	<div id="informations" class="content_box">
        	<div class="information_box">
	        	<div  style="float:left;">
	        		<h2>最新资讯</h2>
	        	</div>
	        	<div  style="float:right;margin-top:5px;">
	        		<h3><a href="pages/information/infos.jsp">更多</a></h3>
	        	</div>
	        	<div style="clear:both;"></div>
        	</div>
        	<c:forEach items="${infos}" var="info">
        		<div class="information_box">
    	            <a href="#"><c:out value="${info.title}"/></a><span>[<fmt:formatDate value="${info.date}" pattern="yyyy-MM-dd" type="date" dateStyle="long"/>]</span>
	            </div>
        	</c:forEach>
<!--         	<div class="information_box"> -->
<!--                 <a href="#">在逆市中不断突破 期盼今年产值翻番</a><span>[2012-01-01]</span> -->
<!--                 <p class="post_info">Posted by <a href="#">Admin</a> on <span>April 30, 2048</span></p> -->
<!--             </div> -->
<!--             <div class="information_box"> -->
<!--                 <a href="#">经济衰退使亚洲印刷出口额出现下降趋势</a><span>[2012-02-02]</span> -->
<!--                 <p class="post_info">Posted by <a href="#">Admin</a> on <span>April 30, 2048</span></p> -->
<!--             </div> -->
<!--             <div class="information_box"> -->
<!--                 <a href="#"> 芬兰技术专长助力中国造纸工业现代化</a><span>[2012-03-03]</span> -->
<!--                 <p class="post_info">Posted by <a href="#">Admin</a> on <span>April 30, 2048</span></p> -->
<!--             </div> -->
<!--             <div class="information_box"> -->
<!--                 <a href="#">国际印刷联盟发布欧洲印刷媒体及生产现状报...</a><span>[2012-04-04]</span> -->
<!--                 <p class="post_info">Posted by <a href="#">Admin</a> on <span>April 30, 2048</span></p> -->
<!--             </div> -->
            
        	<div class="cleaner"></div>
        </div>
    
    </div>
    
    <div class="hotproduct_box">
        
        	<div class="information_box">
        		<h2 id="hotproducttitle">热门产品</h2>
        	</div>
        	
        	 <div id="hotproduct">
		        <ul id="hotproductul">
		            <li><img src="image/ZH-CS050.jpg" alt="" width="150" height="150" /></li>
		            <li><img src="image/ZH-CS051.jpg" alt="" width="150" height="150" /></li>
		            <li><img src="image/ZH-CS052.jpg" alt="" width="150" height="150" /></li>
		            <li><img src="image/ZH-CS053.jpg" alt="" width="150" height="150" /></li>
		            <li><img src="image/ZH-CS054.jpg" alt="" width="150" height="150" /></li>
		            <li><img src="image/ZH-CS055.jpg" alt="" width="150" height="150" /></li>
		            <li><img src="image/ZH-CS056.jpg" alt="" width="150" height="150" /></li>
		            
		            <li><img src="image/ZH-CS050.jpg" alt="" width="150" height="150" /></li>
		            <li><img src="image/ZH-CS051.jpg" alt="" width="150" height="150" /></li>
		            <li><img src="image/ZH-CS052.jpg" alt="" width="150" height="150" /></li>
		            <li><img src="image/ZH-CS053.jpg" alt="" width="150" height="150" /></li>
		            <li><img src="image/ZH-CS054.jpg" alt="" width="150" height="150" /></li>
		            <li><img src="image/ZH-CS055.jpg" alt="" width="150" height="150" /></li>
		            <li><img src="image/ZH-CS056.jpg" alt="" width="150" height="150" /></li>
		            
		        </ul>
		     </div>
        
        	<div class="cleaner"></div>
        </div>
    
    <div class="cleaner"></div>

</div>

<%@ include file="pages/footer.jsp" %>

</body>
</html>
