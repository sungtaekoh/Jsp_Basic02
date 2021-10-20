<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 경로 찾아주는 코드 -->
	<%= request.getContextPath() %>
	${ pageContext.request.contextPath }
	
	<!-- 변수 설정 -->
	<c:set var="google" value="${ pageContext.request.contextPath }"/>
	<c:set var="contextPath1" value="<%= request.getContextPath() %>"/>
	<br>path: ${google}<br>
	path11 : ${contextPath1}<br>
	
	
	<a href="<%= request.getContextPath() %>/ex01_1.jsp">경로이동</a>
	<hr>
	<form action = "${google}/ex01_1.jsp">
		<input type="checkbox" name="check" value="사과">사과주스
		<input type="checkbox" name="check" value="배">배주스
		<input type="checkbox" name="check" value="키위">키위주스
		<br>
		<input type="submit" value="전송">
	</form>
	
	<a href="contextPath/ex01_1.jsp">경로이동</a>
	<hr>
	<form action = "${contextPath}/ex01_1.jsp">
		<input type="checkbox" name="check" value="사과">사과주스
		<input type="checkbox" name="check" value="배">배주스
		<input type="checkbox" name="check" value="키위">키위주스
		<br>
		<input type="submit" value="전송">
	</form>
</body>
</html>