<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<h1>로그인</h1>
	<form action="${pageContext.request.contextPath }/login" method="get">
		<input type="text" placeholder="아이디 입력" name=""> <br>
		<input
			type="password" placeholder="비밀번호 입력" name=""><br><br>
		<button type="submit">로그인</button>
	</form>
</body>
</html>