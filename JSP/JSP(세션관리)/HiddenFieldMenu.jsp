<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hidden Field 방식을 이용한 세션 관리</title>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String pw=request.getParameter("pw");
String grade=request.getParameter("grade");
String grade_name=request.getParameter("grade_name");


%>
<h3>[<%=id %>(<%=grade_name %>)]접속중입니다<br>
사용 가능 메뉴입니다</h3><hr>
<%
if(grade.equals("admin")){
	
%>
<input type="button" value="사이트 관리">
<input type="button" value="회원 관리">
<input type="button" value="자유게시판">
<input type="button" value="회원 게시판">
<%
}else if(grade.equals("member")){
%>
<input type="button"value="자유 게시판">
<input type="button"value="회원 게시판">
<%
}else{
%>
<input type="button"value="자유 게시판">
<%
}
%>
</body>
</html>