<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>상품등록</h3>
<form action="${pageContext.request.contextPath }/AddItemController" method="post" enctype="multipart/form-data">
<table border="1">
<tr><td>상품명</td>
<td><input type="text" name="title" id="title"></td></tr>
<tr><td>가격</td>
<td><input type="text" name="price" id="price"></td></tr>
<tr><td>글비밀번호</td>
<td><input type="password" name="pwd" id="pwd"></td></tr>
<tr><td>이미지</td>
<td><input type="file" name="file" id="file"></td></tr>
<tr><td colspan="2"><input id="upload_btn" type="button" value="save"></td></tr>
</table>
</form>
</body>
</html>