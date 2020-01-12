<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>페이지 이동</title>
</head>
<body>
	<h2>페이지 이동 방식을 지정합니다</h2>
	<%
		String parameter = request.getParameter("move");

		if (parameter == null) {
	%>
	이동 방식을 GET방식으로 지정합니다. 파라미터 이름은 "move"입니다 파라미터의 값은 각가가 아래와 같이 지정합니다
	<hr>
	리다이렉트:"redirect"
	<br> 포워드:"forward"
	<br> 인클루드:"include"
	<br>
	<hr>
	<%
		}

		else if (parameter.equals("redirect")) {
			response.sendRedirect("http://localhost:8083/Chap06/PageMovingRedirect.jsp");
		} else if (parameter.equals("forward")) {
			pageContext.forward("pageMovingForward.jsp");
		} else
			pageContext.include("PageMovingInclude.jsp");
	%>
	<br>
	<h2>PageMoving.jsp 페이지의 마지막입니다</h2>
</body>
</html>