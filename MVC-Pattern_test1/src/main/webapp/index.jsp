<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function logout(){
		const f = confirm("로그아웃 하시겠습니까?");
		if(f) {
			location.href="LogoutServlet";
		}
	}
</script>
</head>
<body>
<%
MemberVO vo = (MemberVO) session.getAttribute("mvo");
%>
MVC Architecture MVC Pattern 적용 회원 관리 프로그램 <br><br>


<% if(vo==null) { %>
	<a href="login.jsp">로그인</a>
	<a href="register.jsp">회원 가입</a>
	<a href="find.jsp">회원 검색</a>
<% }else { %>
	안녕하세요, <%=vo.getName() %> 님<br>
	<a href="update.jsp">회원정보 수정</a><br>
	<input type="button" value="로그아웃" onClick="logout()">
	<hr>
	<a href="cafe.jsp">카페 입장</a>
	<a href="find.jsp">회원 검색</a>
<% } %>	

</body>
</html>