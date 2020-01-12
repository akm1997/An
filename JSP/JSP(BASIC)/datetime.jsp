<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%! Date today=new Date(); 
SimpleDateFormat date=new SimpleDateFormat("YYYY/MM/dd");
SimpleDateFormat time=new SimpleDateFormat("hh:mm:dd a");%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>날짜 시간 출력</title>
</head>
<body>
<h2>날짜/시간 출력</h2>
현재 날짜:<%out.print(date.format(today));%><br>
현재 시간:<%out.print(time.format(today)); %>
</body>
</html>