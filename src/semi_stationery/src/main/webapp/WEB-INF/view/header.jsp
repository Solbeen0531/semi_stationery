<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/header.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/reset.css">
<title>header</title>
</head>
<body>
<div id="top-menu">
	<ul>
	<li class="hira">
		<a href="${pageContext.request.contextPath }/">솔빈문구</a>
	</li>
	<li class="hira">
		<a href="${pageContext.request.contextPath }/shop">Shop</a>
		<div class="caku">
			<ul>
				<li><a href="${pageContext.request.contextPath }/shop">전체상품</a></li>
				<li><a href="${pageContext.request.contextPath }/shop/lifestyle">생활용품</a></li>
				<li><a href="${pageContext.request.contextPath }/shop/letters">편지지</a></li>
			</ul>
		</div>
	</li>
	<li class="hira">
		<a href="${pageContext.request.contextPath }/notice">공지사항</a>
	</li>
	<li>
	</li>
	<li class="hira">
		<a href="${pageContext.request.contextPath }/login">Login</a>
		<div class="caku">
			<ul>
				<li><a href="${pageContext.request.contextPath }/join">Join</a></li>
				<li><a href="${pageContext.request.contextPath }/login">Login</a></li>
			</ul>
		</div>
	</li>
	<li class="hira">
		<a href="${pageContext.request.contextPath }/cart">Cart</a>
	</li>
	</ul>
</div>

</body>
</html>