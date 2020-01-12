<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>param액션태그 사용</title>
</head>
<body>
	<%
		out.print("여기는 ActionTagParamTo2.jsp페이지 입니다");
	%><br>
	ActionTagParamTo2.jsp의 subject파라미터의 값:<%=request.getParameter("subject")%>
</body>
</html>