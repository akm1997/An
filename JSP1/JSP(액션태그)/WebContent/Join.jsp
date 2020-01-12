<%@page import="beans.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="Member" class="beans.Join"/>
	<% request.setCharacterEncoding("utf-8");%>


<%
Member.setName(request.getParameter("name"));
Member.setGender(request.getParameter("gender"));
Member.setId(request.getParameter("id"));
Member.setPassword(request.getParameter("pw"));
Member.setAdress(request.getParameter("adress"));
Member.setNumber(request.getParameter("number"));
Member.setEamil(request.getParameter("email"));
Member.setHobby(request.getParameterValues("hobby"));
%>
	<h3>작성하신 내용은 아래와 같습니다</h3>
	<br> 이름:<%=Member.getName()%><hr>
	성별:<%=Member.getGender()%><hr>
	아이디:<%=Member.getId()%><hr>
	주소:<%=Member.getAdress()%><hr>
	전화번호:<%=Member.getNumber()%><hr>
	이메일주소:<%=Member.getEamil()%><hr>
	취미:<%
		if (Member.getHobby() == null) {
			out.print("[선택한 취미가 없습니다]");
		} else {
	%><table border="2">
		<%
			for (int i = 0; i < Member.getHobby().length; i++) {
		%>

		<tr>
			<td><%=Member.getHobby()[i]%></td>
		</tr>

		<%
			}
		%>
	</table>
	<%
		}
	%>

	

</body>
</html>