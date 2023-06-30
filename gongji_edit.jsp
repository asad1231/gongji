<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.naver.dao.GongjiDAOImpl, com.naver.vo.GongjiVO" %>
<%
	int g_no = Integer.parseInt(request.getParameter("no"));
	GongjiDAOImpl gdao = new GongjiDAOImpl();
	GongjiVO g = gdao.getGonjiCont(g_no);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="../js/jquery.js"></script>
<script src="../js/gongji.js"></script>
</head>
<body>
<h2>회원정보 수정</h2>
<form action="gongji_edit_ok.jsp?no=<%=g_no %>" method="post" onsubmit="return check();">
 <table border="1">
  <tr>
   <th>공지 작성자</th>
   <td><input name="g_name" id="g_name"  value="<%=g.getG_name() %>"></td>
  </tr>
  <tr>
   <th>비밀번호</th>
   <td><input type="password" name="g_pwd" id="g_pwd" size="14"></td>
  </tr>
  <tr>
   <th>공지 제목</th>
   <td><input name="g_title" id="g_title" size="14" value="<%=g.getG_title() %>"></td>
  </tr>
  <tr>
   <th>공지내용</th>
   <td><textarea rows="10" cols="36" name="g_cont" id="g_cont"><%=g.getG_cont() %></textarea></td>
  </tr>
  <tr>
   <th colspan="2">
    <input type="submit" value="공지수정">
    <input type="reset" value="수정취소" onclick="$('#g_name').focus();">
   </th>
  </tr>
 </table>
</form>

</body>
</html>