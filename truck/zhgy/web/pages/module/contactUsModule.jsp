<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page import="com.tornado.model.CompanyInfoModel" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<%
if(request.getAttribute("CompanyPhone") == null)
	request.setAttribute("CompanyPhone",CompanyInfoModel.getCompanyPhone());
if(request.getAttribute("CompanyFax") == null)
	request.setAttribute("CompanyFax",CompanyInfoModel.getCompanyFax());
if(request.getAttribute("CompanyAddress") == null)
	request.setAttribute("CompanyAddress",CompanyInfoModel.getCompanyAddress());
if(request.getAttribute("CompanyEmail") == null)
	request.setAttribute("CompanyEmail",CompanyInfoModel.getCompanyEmail());
if(request.getAttribute("CompanyQQ") == null)
	request.setAttribute("CompanyQQ",CompanyInfoModel.getCompanyQQ());
%>
	<div class="sidebar_box">

		<div class="information_box">
			<h2>联系我们&nbsp;|&nbsp;contact&nbsp;us:</h2>
		</div>
		<p>
			电话:
			<c:out value="${CompanyPhone}"></c:out>
		</p>
		<p>
			传真:
			<c:out value="${CompanyFax}"></c:out>
		</p>
		<p>
			邮箱:
			<c:out value="${CompanyEmail}"></c:out>
		</p>
		<p>
			QQ:
			<c:out value="${CompanyQQ}"></c:out>
		</p>

		<div class="cleaner"></div>

	</div>
</body>
</html>