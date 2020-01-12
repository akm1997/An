<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String id=request.getParameter("id");
String adress=request.getParameter("adress");
String phonenum=request.getParameter("phonenumber");
String email=request.getParameter("email");
String[] hobby=request.getParameterValues("hobby");
%>
<h2>작성하진 내용은 아래와 같습니다</h2>
이름:<%=name %><hr/>
성별:<%=gender %><hr/>
아이디:<%=id %><hr/>
주소:<%=adress %><hr/>
전화번호<%=phonenum %><hr/>
이메일주소<%=email %><hr/>
취미:<br>
<%if(hobby==null){out.print("[선택한 취미가 없습니다]");} %>
<table border=1>
<%for(int i=0;i<hobby.length;i++){%><tr><td><%=hobby[i] %></td></tr><%} %>
</table>


</body>
</html>