<%-- 
<%@page import="com.springbook.biz.board.impl.BoardDAO"%>
<%@page import="com.springbook.biz.board.BoardVO"%>
--%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<%-- <%
	// 1. �˻��� �Խñ� ��ȣ ����
	String seq = request.getParameter("seq");

	// 2. DB ���� ����
	BoardVO vo = new BoardVO();
	vo.setSeq(Integer.parseInt(seq));
	
	BoardDAO boardDAO = new BoardDAO();
	BoardVO board = boardDAO.getBoard(vo);
	
	// 3. ���� ȭ�� ����
%> --%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�α���</title>
</head>
<body>
<h1>�� ��</h1>
<a href="logout.do">Log-Out</a>
<hr>
<form action="updateBoard.do" method="post">
<input name="seq" type="hidden" value="${board.seq }" />
<table border="1">
	<tr>
		<td bgcolor="orange" width="70">����</td>
		<td align="left"><input name="title" type="text" value="${board.title }"/></td>
	</tr>
	<tr>
		<td bgcolor="orange">�ۼ���</td>
		<td align="left">${board.writer }</td>
	</tr>
	<tr>
		<td bgcolor="orange">����</td>
		<td align="left"><textarea name="content" cols="40" row="10">${board.content }</textarea></td>
	</tr>
	<tr>
		<td bgcolor="orange">�����</td>
		<td align="left">${board.regDate }</td>
	</tr>
	<tr>
		<td bgcolor="orange">��ȸ��</td>
		<td align="left">${board.cnt }</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="�� ����" />
		</td>
	</tr>
</table>
</form>
<hr>
<a href="insertBoard.jsp">�۵��</a>&nbsp;&nbsp;&nbsp;
<a href="deleteBoard.do?seq=${board.seq }">�� ����</a>&nbsp;&nbsp;&nbsp;
<a href="getBoardList.do">�� ���</a>
</body>
</html>