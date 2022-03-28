<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>a.jsp</title>
</head>
<body>
	<h3>요청 a.jsp</h3>
	<hr>
	<ul>
		<li>요청 URL : <%= request.getRequestURL() %></li>  <!--   L위치(주소)-->
		<li>요청 URI : <%= request.getRequestURI() %></li>  <!--   U통합 R리소스(자원) I식별자-->
		<li>session 애트리뷰트 sdata : <%=session.getAttribute("sdata") %> </li>
		<!-- 실행 순서  : a.jsp에서 crtl + f11로 확인
			그다음에 index.jsp 실행 후 요청 링크로 a.jsp확인
			  -->
		<li>application 애트리뷰트 adata : <%=application.getAttribute("adata") %> </li>
	</ul>
</body>
</html>