<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>

<!-- include directive -->
<!-- file 속성으로 이 위치에 포함될 파일의 경로를 작성 -->
<%@ include file="module/header01.jsp"%>

<!-- div>(h1>lorem1^p>lorem)*3 -->
<div>
	<h1>Lorem.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet cupiditate molestiae est quis ea quam distinctio consequatur sint cum nostrum vel enim fuga iure impedit neque nesciunt fugit doloremque? Deleniti.</p>
	<h1>Tempore!</h1>
	<p>Ad incidunt itaque non quasi ratione iste fugiat tempora voluptatibus saepe alias illo totam ut harum id ipsam optio sed accusamus eius libero magni? Eos doloremque nemo officia voluptatum officiis!</p>
	<h1>Necessitatibus.</h1>
	<p>A laboriosam eveniet dolorum soluta dolore asperiores maiores dolores ab est odio itaque sed vero quasi necessitatibus atque accusantium cumque quis placeat nulla illum. Reprehenderit minus eius doloribus vel nulla.</p>
</div>


</body>
</html>