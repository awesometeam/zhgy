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
	<div id="latestproductbox" class="hotproduct_box">

		<div class="information_box">
			<h2 id="hotproducttitle">latest products</h2>
		</div>
		<div>
			<div id="latest-products" style="width: 98%; margin: 0px auto;">
				<div class="hotproduct-Navigation">
					<img src="/zhgy/images/arrow-l-blue.png"></img>
				</div>
				<div id="hotproduct">
					<ul id="hotproductul">
						<c:forEach begin="1" end="2" step="1">
							<c:forEach items="${showcasePic}" var="pic">
								<li><a
									href='/zhgy/ProductController.do?action=getProduct&productid=<c:out value="${pic.correlationId}"/>'><img
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
					<img src="/zhgy/images/arrow-r-blue.png"></img>
				</div>
				<div class="cleaner"></div>
			</div>
		</div>
	</div>

	<div class="cleaner"></div>
</body>
</html>