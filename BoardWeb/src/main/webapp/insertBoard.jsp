<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>���� ���</title>
</head>
<body>
<h1>�� ���</h1>
<a href="logout.do">Log-Out</a>
<hr>
<form action="insertBoard.do" method="post">
<table border="1">
	<tr>
		<td bgcolor="orange" width="70">����</td>
		<td align="left"><input type="text" name="title" /></td>
	</tr>
	<tr>
		<td bgcolor="orange">�ۼ���</td>
		<td align="left"><input type="text" name="writer" size="10" /></td>
	</tr>
	<tr>
		<td bgcolor="orange">����</td>
		<td align="left"><textarea name="content" cols="40" row="10"></textarea></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="���� ���" /></td>
	</tr>
</table>
</form>
<hr>
<a href="getBoardList.do">�� ��� ����</a>
</body>
</html>