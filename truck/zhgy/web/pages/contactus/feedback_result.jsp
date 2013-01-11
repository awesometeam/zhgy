<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.model.CompanyInfoModel" %>
<%@ page import="com.tornado.model.PictureModel" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:if test="${empty data}">
	<jsp:forward page="feedback.jsp"></jsp:forward>
</c:if>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>温州中昊工艺品有限公司</title>
<meta name="keywords" content="工艺,工艺品,温州,中昊,wenzhou,zhgy" />
<meta name="description" content="温州中昊工艺品有限公司主页" />
<link href="/zhgy/css/main.css" rel="stylesheet" type="text/css" />
<link href="/zhgy/css/feedback.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/zhgy/js/framework/jquery-1.8.0.js"></script>
<script type="text/javascript" src="/zhgy/js/module/common.js"></script>
<script type="text/javascript" src="/zhgy/js/module/contactus/feedback.js"></script>
</head>
<body>
<%
	request.setAttribute("CompanyPhone",CompanyInfoModel.getCompanyPhone());
	request.setAttribute("CompanyFax",CompanyInfoModel.getCompanyFax());
	request.setAttribute("CompanyAddress",CompanyInfoModel.getCompanyAddress());
	request.setAttribute("CompanyEmail",CompanyInfoModel.getCompanyEmail());
	request.setAttribute("CompanyQQ",CompanyInfoModel.getCompanyQQ());
	
	request.setAttribute("showcasePic",new PictureModel().getAllShowcasePic());
%>

<%@ include file="../header.jsp" %>

<div id="contentPanel">
	<div id="content_wrapper">
	
		<div style=width:100%;margin-bottom:5px;">
			<img width="100%" src="/zhgy/images/show/wrap1.jpg" />
		</div>
	
		<div id="sidebar">
	        
	        <%@ include file="../module/categoryModule2.jsp" %>
	        
	    </div> 
	    
	    <div id="content">
	        
	    	<div id="informations" class="content_box">
	        	<div class="information_box">
		        	<div  style="float:left;">
		        		<h2>在线留言</h2>
		        	</div>
		        	<div style="clear:both;"></div>
	        	</div>
	        	<div id="infodetail">
	        		<div id="feedback">
						<form id="feedback-form" method="post" action="MessageController.do">
						<div class="item">
							<p class="label">姓名：</p><input type="text" name="author" id="author" value='<c:out value="${data.author}"></c:out>'>(*必填)
						</div>
						<div class="item">
							<p class="label">Email：</p><input type="text" name="email" id="email" value='<c:out value="${data.email}"></c:out>' style="width:300px;"><p class="label"></p>(*必填)
						</div>
						<div class="item">
							<p class="label">电话：</p><input type="text" name="phone" id="phone" style="width:300px;" value='<c:out value="${data.phone}"></c:out>'><p class="label"></p>(*必填)
						</div>
						<div class="item">
							<p class="label">主题：</p><input type="text" name="title" id="title" style="width:300px;" value='<c:out value="${data.title}"></c:out>'><p class="label"></p>
						</div>
						<div class="item">
							<p class="label">内容：</p><textarea rows="5" name="content"><c:out value="${data.content}"></c:out></textarea>
						</div>
						<div class="item">
							<input required="true" type="submit" accesskey="s" id="feedback-submit" value="修改留言">
						</div>
						<input type="hidden" name="action" value="updateMessage">
						<input type="hidden" name="messageid" value='<c:out value="${data.id}"></c:out>'>
						</form>
						<script type="text/javascript">
							alert("留言成功！我们将尽快处理该信息并与您联系。");
						</script>
					</div>
	        	</div>
	        	<div class="cleaner"></div>
	        </div>
	        <div class="cleaner"></div>
	    
	    </div>
		<div class="cleaner"></div>
	    
	</div>
</div>

<%@ include file="../module/hotproducts.jsp" %>

<%@ include file="../footer.jsp" %>

</body>
</html>
