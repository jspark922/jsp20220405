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
<%
String op = request.getParameter("calculator");
String x = request.getParameter("num1");
String y = request.getParameter("num2");
double n1 = Double.parseDouble(x);
double n2 = Double.parseDouble(y);

double result = 0;
String message = "";
switch (op) {
case "plus" :
	result = n1 + n2;
	message = n1 + " + " + n2 + " = " + result;
	break;
case "minus" :
	result = n1 - n2;
	message = n1 + " - " + n2 + " = " + result;
	break;
case "multiply" :
	result = n1 * n2;
	message = n1 + " X " + n2 + " = " + result;
	break;
case "division" :
	result = n1 / n2;
	message = n1 + " / " + n2 + " = " + result;
	break;
case "sum" :
	int a = (int) n1;
	int b = (int) n2;
	
	int sum = 0;
	for (int i = a; i <= b; i++) {
		sum += i;
	}
	
	message = a + "~" + b + "의 정수 합은 " +sum;
	break;
default :
}

%>

<h1><%= message %></h1>
</body>
</html>