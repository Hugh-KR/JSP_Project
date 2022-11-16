<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] list = {"hong", "root", "admin"};
	String id = request.getParameter("id");
	String result = "가입 가능한 id입니다.";
	for(String s: list){
		if(s.equals(id)){
			result = "이미 가입된 id입니다.";
		}
	}
%>

<%= result %>