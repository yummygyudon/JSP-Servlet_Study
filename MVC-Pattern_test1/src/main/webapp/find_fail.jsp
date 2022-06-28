<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id =request.getParameter("userId");
%>
<script type= "text/javascript">
	alert("<%=id%>에 해당하는 회원이 존재하지 않습니다.");
	location.href = "index.jsp";
</script>

</body>
</html>