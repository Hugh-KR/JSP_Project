<%@page import="bean.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 가방을 만들어서 id/pw를 넣어주고  -->
<jsp:useBean id="bag" class="bean.MemberDTO"></jsp:useBean>
<jsp:setProperty property="*" name="bag"/><!-- 받아서 가방에 넣어주는 역할 -->

<!-- dao의 login메서드를 호출하면서, 가방에 들어있는 데이터를 
	입력값으로 주어야 함.
-->
<%
	
	MemberDAO dao = new MemberDAO();
	boolean result = dao.login(bag);
	if(result){
		session.setAttribute("id", bag.getId()); //apple
		//세션으로 등록! => 아무데서나 id를 꺼내쓸 수 있음.
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/project.css">
</head>
<body>
<div id="total">
	<div id="top">
		<jsp:include page="top.jsp"></jsp:include>
	</div>
	<div id="top2">
		<jsp:include page="top2.jsp"></jsp:include>
	</div>
	<div id="center">
		로그인 결과: <%= result  %>
		<hr color="blue">
		<a href="logout.jsp">로그아웃</a>
	</div>
</div>
</body>
</html>