<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
String str = "student";
List<String> list = new ArrayList<>();
list.add("pjs");
list.add("cjs");
list.add("kuh");

request.setAttribute("job", str);
request.setAttribute("job", "strange");
request.setAttribute("names", list);
%>

<jsp:forward page="ex06to.jsp"/>