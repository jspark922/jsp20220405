<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%!
private int cocodan(int num) {
	return 3 * num;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>구구단 3단</h1>

<%
for (int i = 1; i < 10; i++) {
	out.print("3" + " X " + i + " = " +cocodan (i));
	out.print("<br>");
}
%>

</body>
</html>