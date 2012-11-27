<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.entity.Information" %>
<%@ page import="com.tornado.service.InformationService" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>温州中昊工艺品有限公司</title>
<meta name="keywords" content="工艺,工艺品,温州,中昊,wenzhou,zhgy" />
<meta name="description" content="温州中昊工艺品有限公司主页" />
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link href="css/flexslider.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/framework/jquery-1.8.0.js"></script>
<script type="text/javascript" src="js/framework/jquery.flexslider.js"></script>
<script type="text/javascript" src="js/module/homepage.js"></script>
</head>
<body>
<%
	List<Information> infos = InformationService.getLastInfos();
	request.setAttribute("infos",infos);
%>
<div id="header_wrapper">
    <div id="header">
    	<div id="site_title">
            <h1><a href="###">
                <span>ZHGY LOGO</span>
            </a></h1>
        </div>
    </div> <!-- end of templatemo_header -->

</div> <!-- end of templatemo_menu_wrapper -->

<div id="menu_wrapper">
    <div id="menu">
        <ul>
            <li><a href="###" class="current">首页</a></li>
            <li><a id="ci" href="###">公司简介</a></li>
            <li><a href="###">产品</a></li>
            <li><a href="###">公司资讯</a></li>
            <li><a href="###">联系我们</a></li>
            <li><a href="###">关于我们</a></li>
        </ul>    	
    </div> <!-- end of templatemo_menu -->
</div>

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
    
    	<div id="introduction" class="sidebar_box">
        	<div class="information_box">
            	<h2>公司简介</h2>
            </div>
            <p>温州中昊工艺品有限公司座落于中国印刷城--温州龙港,是专业从事研发、制造和销售各种促销礼品和包装产品的企业。公司自成立以来，本着"以质量赢市场、以创新促发展、以服务强信誉、以管理增效益"的企业宗旨，走出了一条自主创新、稳定发展、走向品牌的坚实之路。先后引进世界一流印刷设备"海德堡"CD74+UV全数控印刷机器，采用国际环保型UV油墨，做到与国外先进厂家同等水平。公司同时配备了其他印刷设备和各种一流的自动包装机。</p>
        </div>
        
        <div class="sidebar_box">
			
			<div class="information_box">
           		<h2>搜索:</h2>
            </div>
            
            <form action="#" method="get">
            <label>您可以输入产品或公司资讯的相关信息进行搜索</label>
            <input type="text" value="" name="keyword" size="10" id="input_field" title="search" />
            <input type="submit" name="search" value="搜索" alt="search" id="submit_btn" title="Search" />
            </form>
            
            <div class="cleaner"></div>
        
        </div>
    
    </div> 
    
    <div id="content">
    
    	<div id="informations" class="content_box">
        	<div class="information_box">
	        	<div  style="float:left;">
	        		<h2>最新资讯</h2>
	        	</div>
	        	<div  style="float:right;margin-top:5px;">
	        		<h3>更多</h3>
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
        
        <div class="content_box">
        
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
    
    </div>
    
    <div class="cleaner"></div>

</div>

<div id="footer">
	<div id="footer_content">
        <ul class="footer_menu">
			<li><a href="###">主页</a></li>
			<li><a href="###">公司简介</a></li>
			<li><a href="###">产品</a></li>
			<li><a href="###">资讯</a></li>
			<li class="last_menu"><a href="###">联系我们</a></li>
		</ul>
		地 址:中国·温州·龙港镇示范工业园区5区7幢 | 电话:0577-59877566 | 传真:0577-59877766 | 邮箱:wzzhgift@wzzhgift.com<br />
		版权所有 © 2012 <a href="#">温州中昊工艺品有限公司</a> | power by <a href="http://www.vincesu.com">sumaorong</a>
    </div>
</div>

</body>
</html>
