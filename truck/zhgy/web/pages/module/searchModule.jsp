<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>
	<div class="sidebar_box">
<!-- 		<div class="information_box"> -->
<!-- 			<h2>搜索:</h2> -->
<!-- 		</div> -->

		<form id="search_form" action="#" method="get">
			<span class="left-cap"></span>
			<input type="text" name="keywords" id="keywords" maxlength="30" 
			value="搜索产品或关键字" onclick="if(this.value=='搜索产品或关键字')
			this.value='';" onblur="if(this.value=='搜索产品或关键字'||
			this.value=='')this.value='搜索产品或关键字';" />
		</form>

		<div class="cleaner"></div>
	</div>
</body>
</html>