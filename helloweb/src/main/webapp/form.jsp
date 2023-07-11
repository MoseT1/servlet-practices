<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="join.jsp" method="post">
		<label>이메일:</label>
		<input type="text" name="email">
		<br><br>
		<label>비밀번호:</label>
		<input type="password" name="password">
		
		<br>
		<label>생년</label>
		<select name="birthYear">
			<option value="2000">2000년</option>
			<option value="2001">2001년</option>
			
		</select>
		
		<br>
		
		<label>성별:</label>
		남자<input type="radio" name="gender" value="male" checked>
		여자<input type="radio" name="gender" value="female">
		<br>
		
		<label>자기소개:</label>
		<textarea name="profile"></textarea>
		
		<br>
		<label>취미:</label>
		<input type="checkbox" name="hobby" value="coding">코딩
		<input type="checkbox" name="hobby" value="reading">독서
		<input type="checkbox" name="hobby" value="eating">먹기


		<input type="submit" value="등록">
	</form>
</body>
</html>