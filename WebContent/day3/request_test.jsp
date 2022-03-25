<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day2 request test</title>
</head>
<body>
	<!-- form_test.html에서 사용자가 데이터 입력 후 submit 실행하면 url
	 ``query string이 없습니다(개발자도구 f12 = 네티워크탭 - ctrl+r - 선택 - payload - formdata)
	 form 태그에서 method설정 없으면 기본이 'get' : 쿼리 스트링으로 입력값 전달 (데이터 조회 할 떄 사용)
	 						사용자 요청의 url 인코딩은 기본이 utf-8
	 						url에 사용자 입력값이 보입니다.
	 						form태그 사용 외에도 a태그 href 속성값에 url로 전달 할 수 있습니다
				 method = 'post' 로하면  :  form data로 입력값 전달 (데이터 저장)
	 					이때 form data 인코딩은 직접 설정이 필요합니다.
	 						url에 사용자 입력값이 없습니다.
	 					day2의 memverReg.html의 method는 'post'로 합니다.
	 -->					
	<%
			
	 	request.setCharacterEncoding("UTF-8"); // method='post'에서는 꼭 필요.

		String data1 = request.getParameter("data1");
		String data2 = request.getParameter("data2");
		String data3 = request.getParameter("data3");  // null
		
		out.print("사용자 입력값 출력 테스트");  /* out도 jsp의 내장객체입니다. */
		out.print("<br>data1 =");
		out.print(data1);
		out.print("<br>data2 =");
		out.print(data2);
		out.print("<br>data3 =");
		out.print(data3);  /* post_test.html 입력요소중에 name이 'data3' 없습니다. null */
		

	%>
</body>
</html>