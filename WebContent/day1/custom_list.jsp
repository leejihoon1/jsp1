<%@page import="day1.Custom"%>
<%@page import="day1.CustomDao"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="day1.MyUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		style="width:70%;
		margin:auto;
		border-collapse: collapse;"
	}
	caption{
		text-align: right; font-size: 0.8em;
	}
	td,th{
		border : 1px solid gray;
		text-align: center;
		padding : 7px 4px; 
	}
	th{
		background-color: tomato;
		color:white;
	}
</style>
</head>
<body>
<!-- 오라클과 jdbc 연결을 위해서 ojdbc.jar 라이브러리 추가해야합니다.
	: [WebContent폴더] - [Web-INF폴더] - [폴더에 파일을 복사합니다.]
 -->
<%
	CustomDao dao = CustomDao.getCustomDao();
	List<Custom> list = dao.selectAll();
%>
	<h3>TBL_CUSTOM# 테이블 데이터</h3>
	<table>
		<caption>현재 시간 : <%= LocalDate.now() %></caption>
		<tr>
			<th>회원ID</th>
			<th>회원이름</th>
			<th>이메일</th>
			<th>나이</th>
		</tr>
		<!-- 아래의  1행 한명의 MyUser객체 출력을 리스트 크기만큼 반복합니다.-->
<%
		for(int i=0; i<list.size(); i++){		// for(MyUser user : list)
			Custom custom = list.get(i);
%>
		<tr> <!-- MyUser 타입객체의 데이터를 출력  -->
			<td><%= custom.getCustom_id() %></td>		
			<td><%= custom.getName() %></td>		
			<td><%= custom.getEmail() %></td>
			<td><%= custom.getAge() %></td>		
		</tr>
<%
	} 
%>
	</table>
</body>
</html>