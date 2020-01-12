<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="ErrorHandling.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>의도된 에러 페이지</title>
</head>
<body>
<%=100/0 %>
의도된 에러코드이다
현재 내용은 JSP페이지 호출 시 에러가 발생하여 실행되지 못합니다.
</body>
</html>