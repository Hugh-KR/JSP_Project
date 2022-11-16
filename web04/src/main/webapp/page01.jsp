<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
    	Cookie c1 = new Cookie("category", "exercise");
    	Cookie c2 = new Cookie("favoritexercisecategory", "soccer");
    	response.addCookie(c1);
    	response.addCookie(c2);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
브라우저에 쿠키를 심었음. <a href="page02.jsp">쿠키확인하러 가기</a>
</body>
</html>