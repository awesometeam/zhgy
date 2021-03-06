<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="com.tornado.model.PictureModel"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
<%
	request.setAttribute("showcasePic",new PictureModel().getAllShowcasePic());
%>
	<div class="hotproduct_box">

		<div class="information_box">
			<h2 id="hotproducttitle">热门产品</h2>
		</div>
		<div>
			<div class="hotproduct-Navigation">
				<img src="/zhgy/images/arrow-l.png"></img>
			</div>
			<div id="hotproduct">
				<ul id="hotproductul">
					<c:forEach begin="0" end="2">
						<c:forEach items="${showcasePic}" var="pic">
							<li><a
								href='/zhgy/product.jsp?<c:out value="${pic.correlationId}"/>'><img
									src='<c:out value="${pic.picturePath}"/>'
									alt='<c:out value="${pic.pictureDescription}"/>' width='150'
									height='150' />
							</a>
							</li>
						</c:forEach>
					</c:forEach>
				</ul>
			</div>
			<div class="hotproduct-Navigation">
				<img src="/zhgy/images/arrow-r.png" style="float:right;"></img>
			</div>
			<div class="cleaner"></div>
		</div>
		
	</div>

	<div class="cleaner"></div>
</body>
</html>