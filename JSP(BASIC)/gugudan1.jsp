<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구구단 출력</title>
</head>
<body>

<h2>구구단 출력</h2><table border=1>
<tr><%for(int i=2;i<=9;i++){ %><th><%out.print(i+"단"); %></th><%} %></tr>
<%for(int i=1;i<=9;i++){ %><tr><%for(int j=2;j<=9;j++){ %><td><% out.print(j+"X"+i+"="+i*j);%></td><%} %></tr><%} %>
</table>
</body>
</html>