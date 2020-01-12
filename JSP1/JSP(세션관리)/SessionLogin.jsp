<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session 내장객체를 이용한 로그인/러그아웃 구현</title>
</head>
<body>
	<%
if(session.getAttribute("ID")==null){
	
%>
	<form action="SessionAttributeSet.jsp" method="post">
		아이디와 비밀번호를 입력하십시오
		<hr>
		<table border="1">
			<tr>
				<td align="center">아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td align="center">비밀번호</td>
				<td><input type="password" name="pw"></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit" value="로그인">
			</tr>
		</table>
	</form>
	<%}else{ %>
	<h3>
		[<%=session.getAttribute("ID") %>]님 환영합니다
	</h3>
	<table>
		<tr>
			<td>
				<form action="SessionChk.jsp" method="post">
					<input type="submit" value="로그인상태 확인">
				</form>
			</td>
			<td>
				<form action="SessionQuit.jsp" method="post">
					<input type="submit" value="로그아웃">
				</form>
			</td>
		</tr>
	</table>
	<%
	} 
	%>
</body>
</html>