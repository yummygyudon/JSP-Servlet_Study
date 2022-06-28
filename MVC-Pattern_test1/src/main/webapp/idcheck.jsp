<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		text-align : center;
		background-color : yellow;
	}
</style>
<script type="text/javascript">
	function windowClose(b) {
		// opener : 이 창을 열게 만든 근원지
		const rf = opener.document.registerForm
		if(b){
			rf.id.value = "";
			rf.id.focus();
		}else{
//			rf.id.background-color = "grey";
			rf.pass.focus();
		}
		self.close(); // 스스로 닫기
	}
</script>
</head>
<body>
<%
	String id = request.getParameter("id");
	boolean flag = (Boolean)request.getAttribute("flag");
	if(flag){
%>
" <%=id %> " 아이디는 중복됩니다.<br>
다른 아이디를 입력하세요<br>
<% }else{ %>
" <%=id %> " 아이디는 사용가능합니다..<br>
<%} %>
<input type="button" value="확인" onClick="windowClose(<%=flag %>)">
</body>
</html>