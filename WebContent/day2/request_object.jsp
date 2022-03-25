<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day2 request</title>
</head>
<body>
	
	<h3>Request 객체의 정보</h3>
	<hr> 
	<!-- 요청 url : http://localhost:8081/jsp1/day2/request_object.jsp 
		요청 url의 localhost를 내컴퓨터 ip로 바꿔보기(cmd창에서 ifconfig 명령실행하면 ip알 수 있습니다.)
			 http://192.168.35.208:8081/jsp1/day2/request_object.jsp
	-->
	<ul>
		<li>요청 URL : <%= request.getRequestURL() %></li>  <!--   L위치(주소)-->
		<li>요청 URI : <%= request.getRequestURI() %></li>  <!--   U통합 R리소스(자원) I식별자-->
		<li>컨텍스트(context, 프로젝트 이름) : <%=request.getContextPath() %></li>  <!-- 프로젝트이름 /jsp1 -->
		<li>서버 IP : <%= request.getLocalAddr() %>, <%= request.getLocalName() %></li>
		<li>서버 Port : <%= request.getLocalPort() %></li>
		<li>클라이언트 IP : <%= request.getRemoteAddr() %></li> 
		 <!-- IPv6 (64바이트,16진수,16자리  / IPv4:32비트-->
		<%    	//request 객체로 전달되는 인코딩 형식 설정.
				request.setCharacterEncoding("UTF-8"); %>
		<li>문자 인코딩 형식 : <%= request.getCharacterEncoding() %></li>
		<li></li>
	</ul>
	<!-- 출력 IPv4 설정 : Run -> Run Configurations -> tomcat -> Arguments -> VM Arguments 에 입력
								-Djava.net.preferIPv4Stack=true -->
	 
</body>
</html>