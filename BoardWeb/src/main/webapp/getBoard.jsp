<%@page import="com.springbook.biz.board.impl.BoardDAO"%>
<%@page import="com.springbook.biz.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"%>

<%
	// 1. 검색할 게시글 번호 추출
	String seq = request.getParameter("seq");

	// 2. DB 연동 관리
	BoardVO vo = new BoardVO();
	vo.setSeq(Integer.parseInt(seq));
	
	BoardDAO boardDAO = new BoardDAO();
	BoardVO board = boardDAO.getBoard(vo);
	
	// 3. 응답 화면 구성
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<h1>글 상세</h1>
<a href="logout_proc.jsp">Log-Out</a>
<hr>
<form action="updateBoard_proc.jsp" method="post">
<input name="seq" type="hidden" value="<%= board.getSeq() %>" />
<table border="1">
	<tr>
		<td bgcolor="orange" width="70">제목</td>
		<td align="left"><input name="title" type="text" value="<%= board.getTitle() %>"/></td>
	</tr>
	<tr>
		<td bgcolor="orange">작성자</td>
		<td align="left"><%= board.getWriter() %></td>
	</tr>
	<tr>
		<td bgcolor="orange">내용</td>
		<td align="left"><textarea name="content" cols="40" row="10">
			<%= board.getContent() %></textarea></td>
	</tr>
	<tr>
		<td bgcolor="orange">등록일</td>
		<td align="left"><%= board.getRegDate() %></td>
	</tr>
	<tr>
		<td bgcolor="orange">조회수</td>
		<td align="left"><%= board.getCnt() %></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="글 수정" />
		</td>
	</tr>
</table>
</form>
<hr>
<a href="insertBoard.jsp">글등록</a>&nbsp;&nbsp;&nbsp;
<a href="deleteBoard_proc.jsp?seq=<%= board.getSeq() %>">글 삭제</a>&nbsp;&nbsp;&nbsp;
<a href="getBoardList.jsp">글 목록</a>
</body>
</html>