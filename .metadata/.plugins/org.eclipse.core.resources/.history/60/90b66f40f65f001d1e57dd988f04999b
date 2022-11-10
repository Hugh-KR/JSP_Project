<%@page import="db_connect.MovieDAO"%>
<%@page import="db_connect.MovieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MovieDAO dao = new MovieDAO();
ArrayList<MovieVO> list = dao.list();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>
<body>
<h3>
전체 영화 수 :
<%=list.size() %> 편
</h3>
	<table class="table table-warning">
		<tr>
			<th>이미지명</th>
			<th>이미지</th>
		</tr>
		<% for(MovieVO bag : list){ %>
		<tr>
			<td><a href="movie_one.jsp?img=<%= bag.getIMG() %>">
			<%= bag.getIMG() %></a></td>
			<td><img src="img/<%= bag.getIMG() %>" width="200" height="100"></td>
		</tr>
		<% } %>
	</table>

</body>
</html>