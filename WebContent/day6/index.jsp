<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="a.jsp">a.jsp url 요청</a>
	<a href="b.jsp">b.jsp url 요청</a>
	<a href="forward_test.jsp">forward_test.jsp url 요청</a>
	<a href="forward_test.jsp?name=momo">forward_test.jsp url 요청</a>
	
	<% 
		session.setAttribute("sdata", "sana"); // session객체에 애트리뷰트로 데이터 저장.
		application.setAttribute("adata", "나연");
	%>
</body>
</html>