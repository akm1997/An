<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키를 이용한 세션 관리</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		String loginStatus = null;
		String rememberId = null;
		String id = null;
		if (cookies != null && cookies.length > 0) {
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals("loginStatus")) {
					loginStatus = cookies[i].getValue();
					cookies[i].setValue("logout");
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
				if (cookies[i].getName().equals("rememberId")) {
					rememberId = cookies[i].getValue();
				}
				if (cookies[i].getName().equals("id")) {
					id = cookies[i].getValue();
				}
			}
		}
	%>
	<h3>
		[<%=id%>]님 정상적으로 로그아웃되었습니다.<br> 이용해주셔서 감사합니다
	</h3>
	<%
		if (rememberId != null && rememberId.equals("temp")) {
			if (cookies != null && cookies.length > 0) {
				for (int i = 0; i < cookies.length; i++) {
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
				}
			}
		}
	%>
	<form action="CookieSessionLogin.jsp" method="post">
		<input type="submit" value="로그인 페이지로 이동">
	</form>
</body>
</html>