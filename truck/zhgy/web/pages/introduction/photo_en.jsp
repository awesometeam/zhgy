<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.model.CompanyInfoModel" %>
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
<link href="/zhgy/css/main.css" rel="stylesheet" type="text/css" />
<link href="/zhgy/css/flexslider.css" type="text/css" rel="stylesheet" media="screen" />

<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<script defer src="/zhgy/js/framework/jquery.flexslider.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#carousel').flexslider({
	    animation: "slide",
	    controlNav: false,
	    animationLoop: false,
	    slideshow: false,
	    itemWidth: 210,
	    itemMargin: 5,
	    asNavFor: '#slider'
	  });
	   
	  $('#slider').flexslider({
	    animation: "slide",
	    controlNav: false,
	    animationLoop: false,
	    slideshow: false,
	    sync: "#carousel"
	  });
});
</script>
</head>
<body>

<%@ include file="../header_en.jsp" %>

<div id="contentPanel">
	<div id="content_wrapper">
	
		<div style=width:100%;margin-bottom:5px;">
			<img src="/zhgy/images/show/wrap1.jpg" />
		</div>
	
		<div id="sidebar">
	        
	        <%@ include file="../module/categoryModule2.jsp" %>
	    
	    </div> 
	    
	    <div id="content">

			<div id="informations" class="content_box">

				<div style="width:90%;margin:0px auto;">
					<div id="slider" class="flexslider" style="margin: 0 0 10px;">
						<ul class="slides">
								<li data-thumb="/zhgy/images/companyPic/4.jpg">
									<img src="/zhgy/images/companyPic/4.jpg" />
								</li>
								<li data-thumb="/zhgy/images/companyPic/5.jpg">
									<img src="/zhgy/images/companyPic/5.jpg" />
								</li>
								<li data-thumb="/zhgy/images/companyPic/6.jpg">
									<img src="/zhgy/images/companyPic/6.jpg" />
								</li>
								<li data-thumb="/zhgy/images/companyPic/7.jpg">
									<img src="/zhgy/images/companyPic/7.jpg" />
								</li>
								<li data-thumb="/zhgy/images/companyPic/8.jpg">
									<img src="/zhgy/images/companyPic/8.jpg" />
								</li>
						</ul>
					</div>
				
					<div id="carousel" class="flexslider" style="0px 0px 30px;">
						<ul class="slides">
								<li data-thumb="/zhgy/images/companyPic/4.jpg">
									<img src="/zhgy/images/companyPic/4.jpg" />
								</li>
								<li data-thumb="/zhgy/images/companyPic/5.jpg">
									<img src="/zhgy/images/companyPic/5.jpg" />
								</li>
								<li data-thumb="/zhgy/images/companyPic/6.jpg">
									<img src="/zhgy/images/companyPic/6.jpg" />
								</li>
								<li data-thumb="/zhgy/images/companyPic/7.jpg">
									<img src="/zhgy/images/companyPic/7.jpg" />
								</li>
								<li data-thumb="/zhgy/images/companyPic/8.jpg">
									<img src="/zhgy/images/companyPic/8.jpg" />
								</li>
						</ul>
					</div>
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
