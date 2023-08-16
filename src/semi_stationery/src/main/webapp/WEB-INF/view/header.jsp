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
	<div id="menu">
		<ul>
			<li class="top-menu"><a
				href="${pageContext.request.contextPath }/" class="top-menu-link">솔빈문구</a>
			</li>
			<li class="top-menu"><a
				href="${pageContext.request.contextPath }/shop/one"
				class="top-menu-link">Shop</a>
				<div class="sub-menu">
					<ul>
						<li><a href="${pageContext.request.contextPath }/shop/one"
							class="sub-menu-link">상품하나</a></li>
						<li><a href="${pageContext.request.contextPath }/shop"
							class="sub-menu-link">전체상품</a></li>
						<li><a
							href="${pageContext.request.contextPath }/shop/lifestyle"
							class="sub-menu-link">생활용품</a></li>
						<li><a
							href="${pageContext.request.contextPath }/shop/letters"
							class="sub-menu-link">편지지</a></li>
					</ul>
				</div></li>
			<li class="top-menu"><a
				href="${pageContext.request.contextPath }/notice"
				class="top-menu-link">공지사항</a></li>
			<li></li>
			<li class="top-menu"><a
				href="${pageContext.request.contextPath }/login"
				class="top-menu-link">Login</a>
				<div class="sub-menu">
					<ul>
						<li><a href="${pageContext.request.contextPath }/join"
							class="sub-menu-link">Join</a></li>
						<li><a href="${pageContext.request.contextPath }/login"
							class="sub-menu-link">Login</a></li>
					</ul>
				</div></li>
			<li class="top-menu"><a
				href="${pageContext.request.contextPath }/cart"
				class="top-menu-link">Cart</a></li>
		</ul>
	</div>

</body>
</html>