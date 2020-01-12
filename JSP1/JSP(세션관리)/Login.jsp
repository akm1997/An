<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>쿠키를 이용한 세션관리</title>
</head><% 
Cookie[] cookies=request.getCookies();

String rememberIdPw=null;

String id=null;
String pw=null;
if(cookies!=null&&cookies.length>0){
	for(int i=0;i<cookies.length;i++){
		if(cookies[i].getName().equals("rememberIdPw")&&cookies[i].getValue().equals("keep")){
			rememberIdPw=cookies[i].getValue();
		}
	
	}
}

%>
<body>
아이디와 비밀번호를 입력하시오<hr>
<form action="Logined.jsp"method="post">
<table border="2">
<tr>
<td align="center" >아이디</td><td><input type="text" name="id"value="<%=(session.getAttribute("ID")==null?"":session.getAttribute("ID"))%>"></td>
</tr>
<tr>
<td align ="center">비밀번호</td><td><input type="password" name="pw"value="<%=(session.getAttribute("PW")==null?"":session.getAttribute("PW"))%>"></td>
</tr>
<tr>
<td colspan="2"align="right">아이디/비밀번호 기억<input type="checkbox" name="rememberIdPw" value="keep" <%=(rememberIdPw==null?"":"checked=\"checked\"") %>></td>
</tr>
<tr>
<td colspan="2" align="right"><input type="submit" value="로그인"></td>
</tr>
</table>
</form>
</body>
</html>