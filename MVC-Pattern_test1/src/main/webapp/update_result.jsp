<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원정보 변경 완료!</h3>
<%
	MemberVO vo = (MemberVO)session.getAttribute("mvo");
%>
※ 변경된 정보는 다음과 같습니다.
<hr>
<ul>
	<li>비밀번호 : <%= vo.getPassword()%></li>
	<li>이름 : <%= vo.getName()%></li>
	<li>주소 : <%= vo.getAddress()%></li>
</ul>
<hr>
<br>
<a href="index.jsp">처음으로</a>
</body>
</html>