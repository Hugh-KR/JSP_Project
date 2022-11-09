<%@page import="db_connect.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db_connect.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
MemberDAO dao = new MemberDAO();
ArrayList<MemberVO> list = dao.list();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		회원 전체 수 :
		<%=list.size()%>
	</h3>
	<table border="1">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>연락처</th>
			<th>비밀번호</th>
		</tr>
		<%
		for (MemberVO bag : list) {
		%>
		<tr>
			<td><%=bag.getId()%></td>
			<td><%=bag.getName()%></td>
			<td><%=bag.getTel()%></td>
			<td><%=bag.getPw()%></td>
		</tr>

		<%
		}
		%>
	</table>

</body>
</html>