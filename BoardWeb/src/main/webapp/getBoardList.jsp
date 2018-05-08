<%-- 
<%@page import="java.util.List"%>
<%@page import="com.springbook.biz.board.impl.BoardDAO"%>
<%@page import="com.springbook.biz.board.BoardVO"%>
 --%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%-- 
<%
	// 1. ����� �Է� ���� ����
	// 2. DB ���� ó��
	BoardVO vo = new BoardVO();
	BoardDAO boardDAO = new BoardDAO();
	List<BoardVO> boardList = boardDAO.getBoardList(vo);

	// 3. ���� ȭ�� ����
%> 
--%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>�� ���</title>
</head>
<body>
	<h1>�� ���</h1>
	<h3>
		${userName }ȯ���մϴ�.....<a href="logout.do">Log-Out</a>
	</h3>

	<!-- �˻� ���� -->
	<form action="getBoardList.do" method="post">
		<table border="1" width="700">
			<tr>
				<td align="right">
				<select name="searchCondition">
						<option value="TITLE">����
						<option value="CONTENT">����
				</select>
				<input name="searchKeyword" type="text" />
				<input type="submit" value="�˻�"/>
				</td>
			</tr>
		</table>
	</form>
	<!-- �˻� ���� -->
	
	<table border="1" width="700">
		<tr>
			<th bgcolor="orange" width="100">��ȣ</th>
			<th bgcolor="orange" width="200">����</th>
			<th bgcolor="orange" width="150">�ۼ���</th>
			<th bgcolor="orange" width="150">�����</th>
			<th bgcolor="orange" width="100">��ȸ��</th>
		</tr>
		
		<c:forEach items="${boardList }" var="board">
		<tr>
			<td>${board.seq }</td>
			<td align="left"><a href="getBoard.do?seq=${board.seq }"> ${board.title }</a></td>
			<td>${board.writer }</td>
			<td>${board.regDate }</td>
			<td>${board.cnt }</td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<a href="insertBoard.jsp">���� ���</a>
</body>
</html>