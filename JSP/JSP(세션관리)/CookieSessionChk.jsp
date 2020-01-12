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
Cookie[] cookies=request.getCookies();
String loginStatus=null;
String rememberId=null;
String id=null;
if(cookies!=null&&cookies.length>0){
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("loginStatus")){
			loginStatus=cookies[i].getValue();
		}
		if(cookies[i].getName().equals("rememberId")){
			rememberId=cookies[i].getValue();
		}
		if(cookies[i].getName().equals("id")){
			id=cookies[i].getValue();
		}
	}
}
%>
	<%
		if (loginStatus != null && loginStatus.equals("login")
				&& rememberId != null && id != null) {
	%>
	<h3>
		[<%=id%>]님 환영합니다 로그인 아이디 기억상태를[<%=(rememberId.equals("temp") ? "유지하지않음" : "유지함")%>]으로
		설정하였습니다.
	</h3>
	<form action="CookieSessionLogout.jsp" method="post">
		<input type="submit" value="로그아웃">
	</form>
	<%
		} else {
	%>
	<h3>
		로그인 하지 않으셨거나 잘못된 접근입니다<br> 로그인하여 주시기 바랍니다.
		<form action="CookieSessionLogin.jsp" method="post">
			<input type="submit" value="로그인 페이지">
			<%
				}
			%>
		</form>
	</h3>

</body>
</html>