<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c.jsp</title>
</head>
<body>
	<!-- 출력(view) -->
	<h3>요청 c.jsp</h3>
	<hr>
	<ul>
		<!-- c.jsp로 출력 : request 제어는 c.jsp가 합니다. -->
		<li>요청 URL : <%= request.getRequestURL() %></li>  <!--   L위치(주소)-->
		<li>요청 URI : <%= request.getRequestURI() %></li>  <!--   U통합 R리소스(자원) I식별자-->
		<!-- 원래 forward_test.jsp의 애트리뷰트와 파라미터가 전달됩니다. -->
		<li>data 이름의 애트리뷰트 : <%=request.getAttribute("data") %> </li>
		<li>name 이름의 파라미터: <%=request.getParameter("name") %> </li>
	
	</ul>

</body>
</html>