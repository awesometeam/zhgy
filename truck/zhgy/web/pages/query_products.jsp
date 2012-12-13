<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="com.tornado.entity.Product" %>
<%@ page import="com.tornado.service.ProductService" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<ul id="products_list">
<c:forEach items="${products}" var="product">
	<li>
		<div class="product-box">
			<img src="${product.primaryImage}" alt="${product.name}" width="150" height="150" />
			<div>${product.name}</div>
		</div>
	</li>
</c:forEach>
</ul>
