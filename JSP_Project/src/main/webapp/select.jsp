<%@page import="db_connect.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String tel = request.getParameter("tel");


MemberDAO dao = new MemberDAO();
dao.one(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>