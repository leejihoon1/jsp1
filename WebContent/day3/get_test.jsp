<%@page import="koreait.vo.HrdMember"%>
<%@page import="java.util.List"%>
<%@page import="koreait.dao.HrdMemberDao"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day3 Hrd Member List</title>
</head>
<body>
	<%
		//테이블의 데이터 모두 가져오기
		HrdMemberDao dao = HrdMemberDao.getInstance();
		List<HrdMember> list = dao.selectAll();
	%>
	<h3>Hrd Member List</h3>
	<hr>
	<ul>
	<% 
		for(int i=0; i<list.size();i++){
	%>	
		<!-- get 방식의 요청을 보냅니다. 1) 요청 url에 쿼리스트링으로 조회할 값을 전달합니다.
				url에 ? 기호 뒤에 key=value 한쌍으로 값을 전달합니다.
				전달하는 url이 url과 같으면 생략할 수 있습니다.
				a태그의 href 속성 또는 자바스크립트의 location.href='(url)'을 사용합니다.
		 -->	
		<li> <a href="get_result.jsp?custno=<%=list.get(i).getCustno() %>">
			  <%=list.get(i).getCustno() %>
			  </a>
			: <%= list.get(i).getCustName() %>
		</li>
	
	<% 
		}
	%>
	</ul>
		<!-- 방법 2)검색값을 입력받아 조회할 때에는 form 태그 사용합니다.  
			실행된 url : http://localhost:8082/jsp1/day3/get_result.jsp?custno=100004
		-->
		<hr>
		<form action="get_result.jsp"> <!-- method='get'생략 -->
			<input name="custno" placeholder="회원번호 입력"> <button>조회</button>
		</form>
</body>
</html>