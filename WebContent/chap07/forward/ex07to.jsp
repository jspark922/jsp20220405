<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
<%
List<String> names = (List<String>)request.getAttribute("names");
Map<String, String> movies = (Map<String, String>)request.getAttribute("movies");
%>
<h1>names</h1>
<ul>
<%
	for(String name : names) {
%>		
	<li><%= name %></li>
<%
	}
%>
</ul>
<h1>movies</h1>
<ul>
<%
	for( Map.Entry<String, String> movie : movies.entrySet()) {
%>
	<li><%= movie.getKey() + " : " + movie.getValue() %></li>
<%
	}
%>
</ul>


</body>
</html>