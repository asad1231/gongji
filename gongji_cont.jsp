<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.naver.vo.GongjiVO, com.naver.dao.GongjiDAOImpl" %>
<%
	int g_no = Integer.parseInt(request.getParameter("id"));
	GongjiDAOImpl gdao = new GongjiDAOImpl();
	
	GongjiVO g = gdao.getGonjiCont(g_no);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 내용보기</title>
</head>
<body>
<table border="1">
 		<tr>
 			<th colspan="2">게시판 내용보기</th>
 		</tr>
 		<tr>
 			<th>공지 제목</th><td><%=g.getG_title() %></td>
 		</tr>
 		<tr>
 			<th>글내용</th> 
 			<td>
 			<%=g.getG_cont()%>
 			</td>
 		</tr>
 		<tr>
 			<th>조회수</th> <td><%=g.getG_hit()%></td>
 		</tr>
 		<tr>
 			<th colspan="2">
 			 <input type="button" value="수정" onclick="location='gongji_edit.jsp?no=<%=g.getG_no()%>'">
 			 <input type="button" value="삭제" onclick="location='gongji_del.jsp?no=<%=g.getG_no()%>'">
 			 <input type="button" value="목록" onclick="location='gongji_list.jsp';">
 			</th> 
 		</tr>
 	</table>
</body>
</html>