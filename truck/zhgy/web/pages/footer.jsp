<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.tornado.service.CompanyInfoService" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
if(request.getAttribute("CompanyPhone") == null)
	request.setAttribute("CompanyPhone",CompanyInfoService.getCompanyPhone());
if(request.getAttribute("CompanyFax") == null)
	request.setAttribute("CompanyFax",CompanyInfoService.getCompanyFax());
if(request.getAttribute("CompanyAddress") == null)
	request.setAttribute("CompanyAddress",CompanyInfoService.getCompanyAddress());
if(request.getAttribute("CompanyEmail") == null)
	request.setAttribute("CompanyEmail",CompanyInfoService.getCompanyEmail());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="footer">
	<div id="footer_content">
        <ul class="footer_menu">
			<li><a href="index.html">主页</a></li>
			<li><a href="###">公司简介</a></li>
			<li><a href="###">产品</a></li>
			<li><a href="###">资讯</a></li>
			<li class="last_menu"><a href="###">联系我们</a></li>
		</ul>
		地 址:<c:out value="${CompanyAddress}"></c:out> | 电话:<c:out value="${CompanyPhone}"></c:out> | 传真:<c:out value="${CompanyFax}"></c:out> | 邮箱:<c:out value="${CompanyEmail}"></c:out><br />
		版权所有 © 2012 <a href="#">温州中昊工艺品有限公司</a> | power by <a href="http://www.vincesu.com">sumaorong</a>
    </div>
</div>