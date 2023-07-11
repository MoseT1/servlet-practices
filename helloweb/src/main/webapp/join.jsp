<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");  // 받아올 때 어떤걸로 디코딩할지 알려줌. 
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String profile = request.getParameter("profile");
	String[] hobbies = request.getParameterValues("hobby");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=email %>
	<br>
	<%=password %>
	<a href="form.jsp">회원가입</a>
	<br>
	<%=profile.replaceAll("\n", "<br>") %>
	<br>
	<%
		for(String hobby : hobbies) {
	%>
		<h4><%=hobby %></h4>
	<%
		}
	%>
</body>
</html>