<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	ArrayList<String> list = new ArrayList<String>();
	
	list.add("안녕하세요1");
	list.add("안녕하세요2");
	list.add("안녕하세요3");
	list.add("안녕하세요4");
	list.add("안녕하세요5");
	
	request.setAttribute("titles", list);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${titles}" var="title" varStatus="xx">
		${title } : ${xx.index + 1 }<br>
	</c:forEach>
</body>
</html>