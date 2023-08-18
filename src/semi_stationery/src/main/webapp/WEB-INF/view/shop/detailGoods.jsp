<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>솔빈문구</title>
</head>
<body>
	<h1>상품 상세</h1>

	<div>
		<table border="1">
			<tr>
				<td colspan="2">${gid.goImg }</td>

			</tr>
			<tr>
				<td>${gid.goNm }</td>
				<td>${gid.goPrice }</td>
			</tr>

		</table>
	</div>
</body>
</html>