<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.tornado.core.util.Tree"%>
<%@ page import="com.tornado.core.util.TreeNode"%>
<%@ page import="com.tornado.entity.Category"%>
<%@ page import="com.tornado.model.CategoryModel"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script type="text/javascript" src="/zhgy/js/framework/hoverIntent.js"></script>
<script type="text/javascript" src="/zhgy/js/framework/superfish.js"></script>
<link rel="stylesheet" type="text/css" href="/zhgy/css/superfish.css" media="screen">
<link rel="stylesheet" type="text/css" href="/zhgy/css/superfish-vertical.css" media="screen">

<%
	request.setAttribute("categories",new CategoryModel().getCategoryTree_en().getRoot().getChildren());
%>

<div class="sidebar_box_no_shadow">
	<div id="categorytitle"></div>
	<ul id="categorylist" class="sf-menu sf-vertical">
		<c:forEach items="${categories}" var="category">
			<li><a href="#">${category.data.name}</a> <c:if
					test="${fn:length(category.children) != 0}">
					<ul>
						<c:forEach items="${category.children}" var="subcategory">
							<li><a href="#">${subcategory.data.name}</a></li>
						</c:forEach>
					</ul>
				</c:if></li>
		</c:forEach>
	</ul>
	<div class="cleaner"></div>
</div>