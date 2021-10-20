<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> ex01_1.jsp<br>

<!-- 여러개의 값을 받아 var에 저장한다 없으면 아무것도 출력하지 않는다 -->
 	forEach<br>
 	<c:forEach var="var" items="${ paramValues.check }">
 	
 	<!--  출럭코드 -->
 	${var }
 	</c:forEach>
 		
 
 	<hr>
<%
//이렇게 쓰면 하나만 받아서 들어온다
	String checkbox = request.getParameter("check");

//여러개의 값을 받아 올 때는 이 코드를 사용한다
	String[] values = request.getParameterValues("check");
	if( values != null){
	for(int i=0; i<values.length;i++){
		out.print(values[i]);
	}
	out.print("<hr>");
	for(String n : values){
		out.print(n);
		}
	}
	String[] test = {"안녕","하세","요"};
	for(String s : test){
		out.print(s);
	}
	
	int[] arr = {111,222,333,444};
	for(int i : arr){
		out.print(i);
	}
%>
<%--
	<%= checkbox %><hr>
	<%= values[0] %> <%= values[1] %> <%= values[2] %>
	 --%>
</body>
</html>