<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function loginCheck() {
		const f = document.loginForm;
		if(f.id.value==""){
			alert("아이디를 입력하세요.");
			return false;
		}else if(f.pass.value==""){
			alert("비밀번호를 입력하세요.");
			return false;
		}
	}
</script>
</head>
<body>
<form method="post" name="loginForm" action="LoginServlet" onsubmit="return loginCheck()">
	<table border="1">
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" placeholder="ID 입력"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pass" placeholder="비밀번호 입력"></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align:center"><input type="submit" value="Log-In"></td>
		</tr>
	</table>
</form>
</body>
</html>