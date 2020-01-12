<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
int num1=10;
int num2=3;
int add(int a,int b){return a+b;}
int minus(int a,int b){return a-b;}
int multiple(int a,int b){return a*b;}
int division(int a,int b){return a/b;}
int remainder(int a,int b){return a%b;}%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오칙연산 메소드 사용</title>
</head>
<body>
<%=num1%>과<%=num2 %>의 덧셈결과는 [<%=add(num1,num2) %>]<br>
<%=num1%>과<%=num2 %>의 뺼셈결과는 [<%=minus(num1,num2) %>]<br>
<%=num1%>과<%=num2 %>의 곱셈결과는 [<%=multiple(num1,num2) %>]<br>
<%=num1%>과<%=num2 %>의 나눗셈결과는 [<%=division(num1,num2) %>]<br>
<%=num1%>과<%=num2 %>의 나머지결과는 [<%=remainder(num1,num2) %>]
</body>
</html>