<%@page import="db_connect.MemberVO"%>
<%@page import="db_connect.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 데이터를 받아서, sql문을 만들어서, 결과를 html로 -->
<!-- java코드 처리부분 + html로만들어진 부분(jsp) -->
<%
//자바코드를 일부 넣는 부분.
//스크립트 쓰듯이
//스크립트릿(scriptlet)
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");
String tel = request.getParameter("tel");

MemberVO bag = new MemberVO();
bag.setId(id);
bag.setPw(pw);
bag.setName(name);
bag.setTel(tel);

MemberDAO dao = new MemberDAO();
dao.insert(bag);
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