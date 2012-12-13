<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.core.util.Tree" %>
<%@ page import="com.tornado.core.util.TreeNode" %>
<%@ page import="com.tornado.entity.Category" %>
<%@ page import="com.tornado.model.CategoryModel" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<%
	request.setAttribute("categories",new CategoryModel().getCategoryTree().getRoot().getChildren());
%>
	
	<div id="category-div" class="sidebar_box" >
		<div class="information_box">
			<h2>产品分类</h2>
		</div>
		<ul>
			<c:forEach items="${categories}" var="category">
				
					<li id="category-${category.data.id}">
						<span class="arrow"></span>
						<a href="###">${category.data.name}</a>
						<c:if test="${fn:length(category.children) != 0}">
							<ul>
								<c:forEach items="${category.children}" var="subcategory">
									<li id="${subcategory.data.id}">
										<span class="arrow_b"></span>
										<a href="###">${subcategory.data.name}</a>
									</li>
								</c:forEach>
							</ul>
						</c:if>
					</li>
			</c:forEach>
		</ul>
	</div>
	<div class="cleaner"></div>
</body>
</html>