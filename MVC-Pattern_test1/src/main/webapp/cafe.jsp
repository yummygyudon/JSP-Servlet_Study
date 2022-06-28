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
MemberVO vo = (MemberVO)session.getAttribute("mvo") ; 
if (vo!=null){
%>
	<%= vo.getName() %> 님의 카페 입장을 환영합니다. &nbsp; <input type="button" value="로그아웃" onClick="logout()">

<%}else{ %>
	<script type="text/javascript">
		alert("잘못된 접근입니다. 로그인을 먼저 해주세요.");
		location.href="login.jsp";
	</script>
<% } %>
</body>
</html>