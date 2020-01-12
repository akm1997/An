<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내장객체를 이용한 로그인/로그아웃 구현</title>
</head>
<body>
<%
String rememberId=request.getParameter("rememberId");
session.setAttribute("ID",request.getParameter("id"));

response.sendRedirect("http://localhost:8083/Chap08/SessionChk.jsp");

%>
</body>
</html>