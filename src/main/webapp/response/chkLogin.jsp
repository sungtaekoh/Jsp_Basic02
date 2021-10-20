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
<body>
<c:set var='dbId' value="1"/>
<c:set var='dbPwd' value="1"/>
<c:set var='inputId' value="${param.id }"/>
<c:set var='inputPwd' value="${param.pwd }"/>
<c:choose>
	<c:when test="${dbId eq inputId }">
		<c:choose>
			<c:when test="${dbPwd eq inputPwd }">
				로그인 성공
				<script type="text/javascript">
					alert('로그인 성공')
				</script>
			</c:when>
			<c:otherwise>
				비밀번호 틀림
			</c:otherwise>
		</c:choose>
	</c:when>
	<c:otherwise>
		<b style="color:red;">존재하지 않은 아이디 입니다</b>
	</c:otherwise>
</c:choose>
<%-- 
<c:choose> <!--반드시 묶어주어야 한다-->
<!-- else if/한가지만 실행된다-->
	<c:when test="${dbId == inputId && dbPwd eq inputPwd }">
		<c:redirect url="main.jsp"/>
	</c:when>
	<!--else-->
	<c:otherwise>
		<c:redirect url="loginForm.jsp"/>
	</c:otherwise>
</c:choose>
--%>

<%--
//if문 사용
	<c:if test="${dbId == inputId && dbPwd eq inputPwd }">
		인증성공
		<c:redirect url="main.jsp"/>
	</c:if>
	<c:if test="${dbId != inputId || dbPwd ne inputPwd }">
		인증실패<c:redirect url="loginForm.jsp"/>
	</c:if>
--%>

	<%--
		String dbId = "1";
		String dbPwd = "1";
		String inputId = request.getParameter("id");
		String inputPwd = request.getParameter("pwd");
		if(dbId.equals(inputId) && dbPwd.equals(inputPwd)){
			out.print("인증통과");
			response.sendRedirect("main.jsp?id="+inputId);
			/*RequestDispatcher dispatcher = 
					request.getRequestDispatcher("main.jsp");
			dispatcher.forward(request, response);
			*/
		}else{
			out.print("인증실패!!!!");
			
			//해당하는 값이 나오면 ()의 페이지로 보낸다
			response.sendRedirect("loginForm.jsp");
		}
	--%>
</body>
</html>
