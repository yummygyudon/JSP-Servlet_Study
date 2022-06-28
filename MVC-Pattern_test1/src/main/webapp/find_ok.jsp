<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원 검색 결과</h3>

<%
	MemberVO vo = (MemberVO)request.getAttribute("mvo");
%>
<hr>
" <%= vo.getName() %> " 님의 정보
<table border="1">
	<tr>
		<th>ID</th><th><%= vo.getId()%></th>
		
	</tr>
	<tr>
		<th>Name</th><td><%= vo.getName()%></td>
	</tr>
	<tr>
		<th>Address</th><td><%= vo.getAddress()%></td>
	</tr>
</table>
<a href="index.jsp">처음으로</a>
</body>
</html>