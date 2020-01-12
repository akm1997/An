<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<%
	Cookie[] cookies=request.getCookies();

String rememberIdPw=null;

	
	if (cookies != null && cookies.length > 0) {
		for (int i = 0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("rememberIdPw")
					&& cookies[i].getValue().equals("keep")) {
				rememberIdPw = cookies[i].getValue();
			}

		}
	}
	session.setMaxInactiveInterval(300);// 5분이 지나면 session속성값 (저장된ID,PW는 삭제된다) 
%>

<body>
	안전하게 로그아웃되었습니다 이용해주셔서 감사합니다.
	<hr>
	다시 로그인 하시려면
	<br>
	<%pageContext.include("/Login.jsp"); %>
	<hr>
	<form action="Login.jsp" method="post">
		<input type="submit" value="첫화면으로">
	</form>

</body>
</html>