<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
포워딩 수행 전 메시지<br>
<%out.print("하나<br>"); %>
<%out.print("둘<br/>"); %>
<%out.print("셋<br/>"); %>

포워딩을 사용합니다!<br>
<%
pageContext.forward("pageContextFowarded.jsp");
%>

포워딩 수행후<br>
<%out.print("하나<br>"); %>
<%out.print("둘<br/>"); %>
<%out.print("셋<br/>"); %>


</body>
</html>