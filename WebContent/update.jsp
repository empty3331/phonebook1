<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.vo.PersonVo" %>  
<%@ page import="com.javaex.dao.PhoneDao" %>   
    
<%
	int personId = Integer.parseInt(request.getParameter("personid"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo(personId,name,hp,company);
    System.out.println(personVo.toString());
	
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.personUpdate(personVo);
	
	response.sendRedirect("./list.jsp");
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>