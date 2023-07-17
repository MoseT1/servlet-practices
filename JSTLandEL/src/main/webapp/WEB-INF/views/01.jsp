<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>값 출력</h1>
	${ival }<br>
	${lval }<br>
	${fval }<br>
	${bval }<br>
	${sval }<br>
	
	
	<h1>객체 출력</h1>
	${obj }<br>
	${vo.no }<br>
	${vo.name }<br>
	
	<h1>맵 출력</h1>
	${m.ival }<br>
	${m.fval }<br>
	${m.sval }<br>
	
	<h1>산술 연산</h1>
	${3*4+6/2 }<br>
	${ival+10 }<br>
	
	<h1>관계 연산</h1>
	${ival < 10 }<br>
	${ival == 10 }<br>
	${obj == null } : 비추 <br>
	${empty obj } <br>
	${not empty obj }<br>  <!-- null 체크시에는 empty 사용 -->
	
	<h1>논리 연산</h1>
	${ival == 10 && lval <1000 }<br>
	${ival == 10 || lval <1000 }<br>
	
	<h1>요청 파라미터</h1>
	${param.a } <br> <!-- param이란게 따로 있어서 getParameter 해준다. -->
	${param.email }<br>
	
	<h1>Context Path</h1>
	${pageContext.request.contextPath}


</body>
</html>