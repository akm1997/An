<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HiddenField 방식을 이용한 세션 관리</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String pw=request.getParameter("pw");
String grade;
String grade_name;
%>
<%
if(id==null||pw==null||id.trim().equals("")||pw.trim().equals("")){
	grade="guest";
	grade_name="손님";
	id="";
	pw="";
	%>
	
	<h3>[<%=grade_name %>]으로 접속하셧습니다.환영합니다</h3>
	<% 
}else if(id.trim().equals("admin")){
	grade="admin";
	grade_name="관리자";
	%>
	<h3>[<%=id %>]님은 [<%=grade_name %>]권한으로 접속하셨습니다. 환영합니다!</h3>
	<% 
}else{
	grade="member";
	grade_name="회원";
	%>
	<h3>[<%=id %>]님은 [<%=grade_name %>]권한으로 접속하셨습니다. 환영합니다!</h3>
	<% 
}
%>
<form action="HiddenFieldMenu.jsp"method="post">
<input type="hidden"name="id"value="<%=id%>"/>
<input type="hidden"name="pw"value="<%=pw%>"/>
<input type="hidden"name="grade"value="<%=grade%>"/>
<input type="hidden"name="grade_name"value="<%=grade_name%>"/>
<input type="submit"value="사용 가능 메뉴 확인"/>
</form>
</body>
</html>