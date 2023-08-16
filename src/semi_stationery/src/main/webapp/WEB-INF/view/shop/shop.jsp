<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>솔빈문구</title>
</head>
<body>
	<h1>전체 상품</h1>
	<div>
		<table border="1">
			<tr>
				<td>상품 이미지</td>
				<td>상품 이름</td>
				<td>상품 가격</td>
			</tr>
			<c:forEach items="${goodslist }" var="item">
				<tr>
					<td>${item.goImg }</td>
					<td>${item.goNm }</td>
					<td>${item.goPrice }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>