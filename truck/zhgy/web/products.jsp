<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tornado.entity.Category" %>
<%@ page import="com.tornado.service.CategoryService" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/main.css" rel="stylesheet" type="text/css" />
<title>产品</title>
</head>
<body>
<%
	request.setAttribute("categories",CategoryService.list());
%>
<%@ include file="pages/header.jsp" %>
	<script>
		var categories = Array();
		<c:forEach items="${categories}" var="category">
			categories.push({
				'category_id':"${category.id}",
				'higherid':"${category.higherid}",
				'havehigher':"${category.havehigher}",
				'name':"${category.name}",
				'number':"${category.number}",
				'introduction':"${category.introduction}",
						});
		</c:forEach>
	</script>
<%@ include file="pages/footer.jsp" %>
</body>
</html>