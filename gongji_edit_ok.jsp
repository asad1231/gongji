<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.naver.dao.GongjiDAOImpl, com.naver.vo.GongjiVO" %>
<%
	request.setCharacterEncoding("UTF-8");
	int g_no = Integer.parseInt(request.getParameter("no"));
	String g_name = request.getParameter("g_name");
	String g_pwd = request.getParameter("g_pwd");
	String g_title = request.getParameter("g_title");
	String g_cont = request.getParameter("g_cont");
	
	GongjiDAOImpl gdao = new GongjiDAOImpl();
	GongjiVO eg = new GongjiVO();
	eg.setG_no(g_no);eg.setG_name(g_name);eg.setG_pwd(g_pwd);eg.setG_title(g_title);eg.setG_cont(g_cont);
	
	int re = gdao.updateGongji(eg);
	/*문제)아이디를 기준으로 비번,회원이름,폰번호,이메일을 수정되게 해보자.
	
	*/
	if(re == 1){
		out.println("<script>");
		out.println("alert('공지수정에 성공했습니다!');");
		out.println("location='gongji_list.jsp';");
		out.println("</script>");
	}else{
		out.println("<script>");
		out.println("alert('비번이 다릅니다!');");
		out.println("location='gongji_list.jsp';");
		out.println("</script>");
	}
%>