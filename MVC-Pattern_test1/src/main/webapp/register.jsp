<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function checkId(){
		const rId = document.registerForm.id.value;
		window.open("IdCheckServlet?id="+rId, 
				"popup", "resizable=no, toolbar=no, width=400, height=100");
	}
</script>
</head>
<body>
<form method="post" name="registerForm" action="RegisterServlet" onsubmit="return registerCheck()">
	<table border="1">
		<thead>
			<tr style="text=align:center">
				<th colspan="2">회원가입</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"><input type="button" value="중복 확인" onClick="checkId()"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass" ></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address"></td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2" style="text-align:center"><input type="submit" value="회원가입"></td>
			</tr>
		</tfoot>	
	</table>
</form>
</body>
</html>