<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>JSTL Test: forEach</h4>
	<c:forEach items="${list }" var="vo" varStatus="status">  <!-- items는 리스트 ,var는 참조하는 이름 -->
		<h4>[${status.count }]:[${status.index}] ${vo.no }:${vo.name }</h4>   <!-- count는 1부터시작, index는 0부터 시작 -->
	
	</c:forEach>
</body>
</html>