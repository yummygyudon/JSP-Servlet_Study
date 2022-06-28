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
	if( vo != null) {
%>
<h3>" <%= vo.getName() %> " 회원정보 수정</h3>
	<hr><br>
	<form method="post" action="UpdateServlet" >
	<table border="1">
		<tr>
			<th>ID</th><th><input type="text" name="id" value=<%= vo.getId()%> readonly></th>
		</tr>
		<tr>
			<th>Password</th><td><input type="password" name="pass" value=<%= vo.getPassword()%>></td>
		</tr>
		<tr>
			<th>Name</th><td><input type="text" name="name" value=<%= vo.getName()%>></td>
		</tr>
		<tr>
			<th>Address</th><td><input type="text" name="address" value=<%= vo.getAddress()%>></td>
		</tr>
	</table>
	<input type="submit" value="수정하기">
	</form>
	<a href="index.jsp">처음으로</a>
<% }else{ %>
	<script type="text/javascript">
		alert("잘못된 접근입니다. 로그인을 먼저 해주세요.");
		location.href="login.jsp";
	</script>
<% } %>
</body>
</html>