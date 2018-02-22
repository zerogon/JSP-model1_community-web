<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	String schemt=(String)session.getAttribute("schemt");
	String schmid=(String)session.getAttribute("schmid");
	String schhigh=(String)session.getAttribute("schhigh");
	String aditemt=schemt.substring(0,schemt.length()-3);
	String aditmid=schmid.substring(0,schmid.length()-2);
	String adithigh=schhigh.substring(0,schhigh.length()-3);

%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<style>
.w3-theme {color:#fff !important;background-color:#4CAF50 !important}
.w3-btn {background-color:#4CAF50;margin-bottom:4px}
.w3-code{border-left:4px solid #4CAF50}
.myMenu {margin-bottom:150px}
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
</style>

<body class="w3-theme-l5">
<div class="w3-top">
  <div class="w3-row w3-white w3-padding">
    <div class="w3-half" style="margin:4px 0 6px 0"><a href='https://www.w3schools.com'><img src='/Project/images/w3schools.png' alt='W3Schools.com'></a></div>
    <div class="w3-half w3-margin-top w3-wide w3-hide-medium w3-hide-small"><div class="w3-right">THE WORLD'S LARGEST WEB DEVELOPER SITE</div></div>
  </div>
  <div class="w3-bar w3-blue-grey w3-large" style="z-index:4;">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-small w3-hover-white w3-padding-16" href="<%=request.getContextPath()%>/mainPage/main.jsp" >메인</a>
   <a class="w3-bar-item w3-button w3-hide-medium w3-hover-white w3-padding-16" href="<%=request.getContextPath()%>/header/board.jsp" >게시판</a>
   <a class="w3-bar-item w3-button w3-hide-medium w3-hover-white w3-padding-16" href="<%=request.getContextPath()%>/header/lounge.jsp" >라운지</a>
   	<i style="font-size:26px" class="fa w3-bar-item w3-button w3-hide-medium w3-hover-white w3-padding-16 w3-right">&#xf039;</i>
  </div>
</div>

<!-- Sidebar -->
<div class="w3-sidebar w3-bar-block w3-collapse w3-animate-left" style="z-index:3;width:270px" id="mySidebar">

 <div class="myMenu">
  <div class="w3-container">
	<p></p>
  </div>
     <div class="w3-card w3-round w3-white">
        <div class="w3-container">
         <h4 class="w3-center">My Profile</h4>
         <p class="w3-center"><img src="<%=request.getContextPath()%>/images/defaultprofile.jpg" class="w3-circle" style="height:106px;width:106px" ></p>
         <hr>
         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> <%=session.getAttribute("name")%></p>
         <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i>
         <%=aditemt%>, <%=aditmid%>, <%=adithigh%></p>
         <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> March 3, 1992 </p>
        </div>
      </div>
  <a class="w3-bar-item w3-button" href="<%=request.getContextPath()%>/mainPage/update.jsp">회원정보</a>
  <a class="w3-bar-item w3-button" href="">로그아웃</a>
  
  </div>
</div>
  


<!-- Main content: shift it to the right by 270 pixels when the sidebar is visible -->

</body>
</html>