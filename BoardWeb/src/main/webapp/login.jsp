<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�α���</title>
</head>
<body>
	<h1>�α���</h1>
	<hr>
	<form action="login.do" method="post">
		<table border="1">
			<tr>
				<td bgcolor="orange">���̵�</td>
				<td><input type="text" name="id" value="${userVO.id }"/></td>
			</tr>
			<tr>
				<td bgcolor="orange">��й�ȣ</td>
				<td><input type="password" name="password" value="${userVO.password}" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="�α���" />
				</td>
			</tr>
		</table>
	</form>
	<hr>
</body>
</html>