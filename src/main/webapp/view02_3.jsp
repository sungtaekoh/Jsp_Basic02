<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>view02_3<br>
이름:${param.name }<br>
성별:${param.gender}<br>
<c:forEach var="ss" items="${paramValues.season }">
계절:${ss }<br>
</c:forEach>

</body>
</html>