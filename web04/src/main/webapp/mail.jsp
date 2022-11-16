<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>메일화면</h3>
<hr color='red'>
<!-- 로그인이 안되었으면, 로그인 페이지로 넘어가게 하자 -->
<% 
if(session.getAttribute("id") != null){
%>
	로그인한 사람 <%= session.getAttribute("id") %>
<%}else{ 
	response.sendRedirect("login.html");
	//브라우저야 login.html을 호출해!

} %>
</body>
</html>