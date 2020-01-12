<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	안전하게 로그아웃되었습니다. 이용해주셔서 감사합니다
	<hr>
	다시로그인 하시려면
	<%
	pageContext.include("/SessionLogin.jsp");
%>
	<hr>
	<form action="SessionLogin.jsp" method="post">
		<input type="submit" value="첫 화면으로"/>
	</form>
</body>
</html>