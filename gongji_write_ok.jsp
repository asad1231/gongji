<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.naver.vo.*, com.naver.dao.GongjiDAOImpl" %>
<%
	request.setCharacterEncoding("UTF-8");//method=post방식으로 전송되는 한글을 서버에서 받을 때 안깨지게 한다.
%>
<jsp:useBean id="gong" class="com.naver.vo.GongjiVO"/>
<jsp:setProperty property="*" name="gong"/>
<%
	GongjiDAOImpl gdao = new GongjiDAOImpl();
	int result = gdao.gongji_insert(gong);//회원저장
	
	if(result == 1){
		out.println("<script>");
		out.println("alert('공지사항 등록 성공했습니다!');");
		out.println("location='gongji_list.jsp';");
		out.println("</script>");
	}
%>