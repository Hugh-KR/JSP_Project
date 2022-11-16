<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

String id2 = "root";
String pw2 = "pass";

String result = "로그인 실패";
if (id.equals(id2) && pw.equals(pw2)) {
	result = "로그인 성공";
	session.setAttribute("id", id);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	로그인 결과:
	<%=result%>
	<br> 세션으로 저장된 id의 값은
	<%=session.getAttribute("id")%>

	<hr color="green">

	<a href="news.jsp">
		<button>뉴스사이트</button>
	</a>
	<a href="shopping.jsp">
		<button>쇼핑사이트</button>
	</a>
	<a href="mail.jsp">
		<button>메일사이트</button>
	</a>
</body>
</html>