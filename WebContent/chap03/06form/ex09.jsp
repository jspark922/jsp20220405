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
<h1>input요소 type="radio"</h1>

<form action="ex10.jsp">
	우편물 <br />

	<input type="radio" name="destination" id="" value="home" /> 집
	<br />
	<input type="radio" name="destination" id="" value="work"/> 직장
	<br />
	<input type="radio" name="destination" id="" value="scholl"/> 학교
	<br />
	
	성별 <br />
	
	<input type="radio" name="gender" id="" value="man"/> 남
	<br />
	<input type="radio" name="gender" id="" value="woman"/> 여
	<br />
	<input type="submit" value="전송" />
</form>
</body>
</html>