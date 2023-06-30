<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.naver.vo.*, com.naver.dao.GongjiDAOImpl,java.util.*" %>
<%
	GongjiDAOImpl gdao=new GongjiDAOImpl();
	List<GongjiVO> glist = gdao.getGongjiList();//회원목록을 가져옴.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<table border="1">
  <tr>
   <th colspan="5">공지사항 목록</th>
  </tr>
  <tr>
   <th>no</th><th>공지 작성자</th><th>공지 제목</th><th>조회수</th><th>등록날짜</th>
  </tr>
  <%
  	if(glist != null && glist.size() > 0){
  		for(GongjiVO g:glist){
  %>
 
   <tr>
    <th><%=g.getG_no() %></th>
    <th><%=g.getG_name() %></th>
    <th><a href="gongji_cont.jsp?id=<%=g.getG_no() %>"><%=g.getG_title() %></a></th>
    <th><%=g.getG_hit() %></th>
    <th><%=g.getG_date().substring(0, 10) %></th>
   </tr>
  <%	}
  	}else{
  %>
  <tr>
   <th colspan="5">공지사항이 없습니다!</th>
  </tr>
  <%} %>
  <tr>
   <th colspan="5"> <input type="button" value="공지등록 " onclick="location='gongji_write.jsp';"> </th>
  </tr>
 </table>
</body>
</html>