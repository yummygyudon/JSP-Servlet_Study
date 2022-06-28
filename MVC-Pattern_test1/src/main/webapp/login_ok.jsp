<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
MemberVO vo = (MemberVO)session.getAttribute("mvo"); 
if(vo!=null){
%>
	<h3>로그인 완료!</h3>
	<%= vo.getName() %> 님, 환영합니다!
	<hr>
	<a href="cafe.jsp">카페 입장</a><br>
	<a href="index.jsp">처음으로</a>
<%
}else{ 
	response.sendRedirect("login.jsp");
}
%>

</body>
</html>