<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Cookie[] cookies = request.getCookies();

for (Cookie c : cookies) {
	//out: 브라우저에 텍스트로 프린트하고자하는 경우
	if (c.getName().equals("JSESSIONID") && c.getValue().equals("08E2AD5D6B2CCEF24F837B1278DD4E60")) {
		continue;
	}
	out.print(c.getName() + ", " + c.getValue() + "<br>");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	쿠키의 개수:
	<%=cookies.length - 1%>
</body>
</html>