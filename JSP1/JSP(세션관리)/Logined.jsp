<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키를 이용한 세션관리</title>
</head>
<body>
	<%
		String rememberIdPW=request.getParameter("rememberIdPw");
	

	Cookie cookieRememberIdPw;
	

	if(rememberIdPW != null && rememberIdPW.equals("keep")) {
			cookieRememberIdPw = new Cookie("rememberIdPw", "keep");
		} else {
			cookieRememberIdPw = new Cookie("rememberIdPw", "temp");
		}
	
	

	response.addCookie(cookieRememberIdPw);
	%>
	<%
session.setAttribute("ID", request.getParameter("id"));
session.setAttribute("PW", request.getParameter("pw"));

%>
<form action="Logout.jsp"method="post">
<table border="2">
<tr>
<td><%=session.getAttribute("ID") %>님 로그인을 환영합니다.</td>
</tr>
<tr>
<td colspan="2" align="right"><input type="submit" value="로그아웃"></td>
</tr>
</table>
</form>
</body>
</html>