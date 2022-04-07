<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- select option -->

<h1>select option</h1>
<form action="ex.jsp">
	<input type="text" name="age"/> <br />	

	<select name="movie" id="">
		<option value="avengers">어벤져서</option>
		<option value="knigiht">문나이트</option>
		<option value="doctor">닥터스트레인지</option>
	</select>
	<input type="submit" value="전송"/>
</form>
</body>
</html>