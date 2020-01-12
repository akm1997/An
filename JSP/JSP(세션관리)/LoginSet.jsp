<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String rememberId= request.getParameter("rememberId");
String id=request.getParameter("id");
Cookie cookieRememberId;
Cookie cookieId;
Cookie cookieLoginStatus;

if(rememberId!=null&&rememberId.equals("keep")){
	cookieRememberId=new Cookie("rememberId","keep");// 아이디 저장기능 되잇을떄
}else {
	cookieRememberId=new Cookie("rememberId","temp");// 아이디 저장 기능 안되있을경우
}
cookieId=new Cookie("id",id);
cookieLoginStatus=new Cookie("loginStatus","login");  //로그인 상태?

response.addCookie(cookieRememberId);
response.addCookie(cookieId);
response.addCookie(cookieLoginStatus);


out.println(cookieRememberId.getValue());
response.sendRedirect("http://localhost:8083/Chap08/CookieSessionChk.jsp");
%>
</body>
</html>