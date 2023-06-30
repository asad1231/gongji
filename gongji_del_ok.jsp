<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.naver.dao.GongjiDAOImpl, com.naver.vo.GongjiVO" %>
<%
	request.setCharacterEncoding("UTF-8");
	int g_no = Integer.parseInt(request.getParameter("no"));
	String g_pwd = request.getParameter("g_pwd");
	GongjiDAOImpl gdao = new GongjiDAOImpl();
	
	int re = gdao.delGongji(g_no , g_pwd);
	
	if(re == 1){
		out.println("<script>");
		out.println("alert('삭제에 성공했습니다!');");
		out.println("location='gongji_list.jsp';");
		out.println("</script>");
	}else{
		out.println("<script>");
		out.println("alert('비번이 다릅니다!');");
		out.println("location='gongji_list.jsp';");
		out.println("</script>");
	}
%>