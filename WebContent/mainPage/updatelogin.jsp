<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String pass=request.getParameter("password");
	String memberpass=(String)session.getAttribute("password");
	
	
	
	if(pass.equals(memberpass)){ 
		response.sendRedirect("/Project/mainPage/updateForm.jsp");
	}else{
%>
     <script>
      alert("비밀번호가 틀립니다!");
      history.back();
     </script>
<% 
    }
%>  
</body>
</html>