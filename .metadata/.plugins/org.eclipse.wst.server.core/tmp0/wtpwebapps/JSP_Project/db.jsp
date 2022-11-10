<%@page import="db_connect.MemberDAO"%>
<%@ page import="db_connect.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//1)입력
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		//2)db처리
		MemberVO bag = new MemberVO();
		bag.setId(id);
		bag.setPw(pw);
		
		MemberDAO dao = new MemberDAO();
		int result = dao.login(bag); //1 or 다른값
		
		//3)출력(html)
		String result2 = "로그인 실패";
		if(result == 1){
			result2 = "로그인 성공";
			response.sendRedirect("http://www.naver.com");
		}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 결과 : <%= result2 %>
</body>
</html>