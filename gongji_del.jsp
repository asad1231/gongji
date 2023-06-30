<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.naver.dao.GongjiDAOImpl, com.naver.vo.GongjiVO" %>
<%
	int g_no = Integer.parseInt(request.getParameter("no"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지삭제</title>
<script src="../js/jquery.js"></script>
<script type="text/javascript">
function check(){
if($.trim($("#g_pwd").val()) == ""){
		alert("비밀번호를 입력하세요!");
		$("#g_pwd").val("").focus();
		return false;
		}
}
</script>
</head>
<body>
<form action="gongji_del_ok.jsp?no=<%=g_no %>" method="post" onsubmit="return check()">
비밀번호 : <input type="password" name="g_pwd" id="g_pwd" size="14">
<input type="submit" value="삭제">
</form>
</body>
</html>