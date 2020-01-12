<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>param 액션 태그 사용</title>
</head>
<body>
	<%
		out.print("여기는 ActionTagParamFrom2.jsp 페이지입니다!<br/>");
	%> ActionTagParamFrom2.jsp의 subject파라미터 값:<%=request.getParameter("subject")%><hr>
	<jsp:include page="ActionTagParamTo2.jsp">
		<jsp:param name="subject" value="ParamActionTagExample2"/></jsp:include>

</body>
</html>