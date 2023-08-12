<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>솔빈문구</title>
</head>
<body>
	<h2>상품 하나만 보기</h2>
	<table border="1">
		<tr>
			<td colspan="2">상품이미지</td>

		</tr>
		<tr>
			<td>상품이름</td>
			<td>상품가격</td>
		</tr>

	</table>
	<hr>
	<table border="1">
		<tr>
			<td colspan="2"> ${goTy.goImg }</td>

		</tr>
		<tr>
			<td> ${goTy.goNm }</td>
			<td> ${goTy.goPrice }</td>
		</tr>

	</table>
</body>
</html>