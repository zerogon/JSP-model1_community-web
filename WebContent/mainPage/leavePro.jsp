<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script >
		var input = confirm('정말로 탈퇴하시겠습니까?');
		if(input==true){
			alert('탈퇴 완료');
			<%
			/*맴버아이디 해더에  */
				MemberDAO dbPro = MemberDAO.getInstance();
				dbPro.deleteArticle(memberid);
				session.invalidate();
			%> 
			location.href="/Project/start/loginForm.jsp";
		}

</script>
</body>
</html>