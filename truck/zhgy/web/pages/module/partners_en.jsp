<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>

<div id="partner">
	<table>
		<tr>
			<td><img src="/zhgy/images/partners_blue2.png" /></td>
			<c:forEach begin="1" end="6" step="1" var="i">
			<td><img height="40px" src='/zhgy/images/partners/<c:out value="${i}" />.jpg' />
			</td>
			</c:forEach>
			</tr>
	</table>
</div>

<!-- <div id="partners"> -->
<!-- 	<div style="padding-left:60px;"><img src="/zhgy/images/partner_blue.png" /></div> -->
<!-- 	<div class="items" style="padding-left:60px;"> -->
<!-- 		<table> -->
<!-- 			<tr> -->
<%-- 			<c:forEach begin="1" end="6" step="1" var="i"> --%>
<%-- 				<td><img height="40px" src='/zhgy/images/partners/<c:out value="${i}" />.jpg' /></td> --%>
<%-- 			</c:forEach> --%>
<!-- 			</tr> -->
<!-- 		</table> -->
<!-- 	</div> -->
<!-- </div> -->
</body>
</html>