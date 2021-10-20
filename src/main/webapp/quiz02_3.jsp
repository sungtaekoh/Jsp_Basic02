<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>quiz02_3<br>
<h1>설문조사</h1>
<form action="${contextPath}/view02_3.jsp">
<table border="1">
<tr>
<th>이름:</th>
<td>
<input type="text" name="name" placeholder="이름입력하세요">
</td>
</tr>
<tr>
<th>성별:</th>
<td>
<input type="radio" name="gender" value="남자다잉">남자
<input type="radio" name="gender" value="여자다잉">여자
</td>
</tr>
<tr>
<th>좋아하는 계절:</th>
<td>
<input type="checkbox" name="season" value="봄">봄
<input type="checkbox" name="season" value="여름">여름
<input type="checkbox" name="season" value="가을">가을
<input type="checkbox" name="season" value="겨울">겨울
</td>
</tr>
<tr>
<th>
<input type="submit" value="전송">
</th>
<th>
<input type="reset" value="취소">
</tr>
</table>
</form>

</body>
</html>