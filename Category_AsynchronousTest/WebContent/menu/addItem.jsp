<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>��ǰ���</h3>
<form action="${pageContext.request.contextPath }/AddItemController" method="post" enctype="multipart/form-data">
<table border="1">
<tr><td>��ǰ��</td>
<td><input type="text" name="title" id="title"></td></tr>
<tr><td>����</td>
<td><input type="text" name="price" id="price"></td></tr>
<tr><td>�ۺ�й�ȣ</td>
<td><input type="password" name="pwd" id="pwd"></td></tr>
<tr><td>�̹���</td>
<td><input type="file" name="file" id="file"></td></tr>
<tr><td colspan="2"><input id="upload_btn" type="button" value="save"></td></tr>
</table>
</form>
</body>
</html>