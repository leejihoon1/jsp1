<%@page import="koreait.vo.HrdMember"%>
<%@page import="koreait.dao.HrdMemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String custno = request.getParameter("custno");
//	out.print("custno :");
//	out.print(custno);
//	out.print("<br>");
	int no=0;
	
//	if(custno == null){   //?custno 자체가 없을때  http://localhost:8081/jsp1/day3/get_result.jsp
//		out.print("<script>alert('검색값이 없습니다.');location.href='memberList.jsp';");
//		out.print("</script>");
//	}else {
		try{
			no = Integer.parseInt(custno);
			HrdMemberDao dao = HrdMemberDao.getInstance();
			HrdMember member = dao.selectOne(no);
			if(member !=null) {
				request.setAttribute("member", member);
				pageContext.forward("5_updateForm.jsp");   //update 사용자 뷰
			}else {
				out.print("<script>alert('검색결과가 없습니다.');location.href='memberList.jsp';");
				out.print("</script>");
			}
		}catch(NumberFormatException e) {
	//form 태그 조회값 없이 실행됬을 때 http://localhost:8081/jsp1/day3/get_result.jsp?custno=
			out.print("<script>alert('잘못된 검색값입니다.');location.href='memberList.jsp';");
			out.print("</script>");
		}
//	}
	
	
%>