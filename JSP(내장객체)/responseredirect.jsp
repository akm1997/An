<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String redirect=request.getParameter("redirect");

if(redirect==null){
	
	out.println("redirect가 지정되지 않았습니다.");
}
else if(redirect.equals("okjsp")){
	response.sendRedirect("http://www.okjsp.pe.kr");
	
}else{
	response.sendRedirect("http://localhost:8083/Chap06/responseRedirected.jsp");
}
%>

</body>
</html>