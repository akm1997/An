<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>request 내장객체를 이용한 요청 전송정보</title>
</head>
<body>
요청 프로토콜:<%=request.getProtocol() %><br>
요청 방식:<%=request.getMethod() %><br>
현재 페이지경로:<%=request.getContextPath() %><br>
웹 클라이언트 URI:<%=request.getRequestURI() %><br>
웹 클라이언트 URL:<%=request.getRequestURL() %><br>
웹 클라이언트 Query<%=request.getQueryString() %><br>
웹 클라이언트 호스트명:<%=request.getRemoteHost() %><br>
웹 클라이언트 IP주소:<%=request.getRemoteAddr() %><br>
웹 서버 도메인:<%=request.getServerName()%><br>
웹 서버 포트 <%=request.getServerPort() %><br>

<hr/>
<p>헤더 정보</p>
<%
Enumeration<String> header=request.getHeaderNames();

while(header.hasMoreElements()){
	String name=(String)header.nextElement();
	String value=request.getHeader(name);
	out.print(name+":"+value+"</br>");
}
%>

</body>
</html>