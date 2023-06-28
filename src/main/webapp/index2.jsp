<%@page import="sample1.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%	
	//		단순이동, 값을 전달(parameter)
	//response.sendRedirect("index3.jsp");	// 이동(=link)
	
	// 짐싸!
	Student student = new Student();
  //request.setAttribute("student", student);
  //request.getSession("student", student);	== session
	session.setAttribute("student", student);
	session.setMaxInactiveInterval(60*60*2);
	//		이동, 값을 전달(object)
	//pageContext.forward("index3.jsp");	// 이동(=link) index2에서 index3값을 받아와 출력, 값을 가져가고
	//response.sendRedirect("index3.jsp?name=kim");	// 이동(=link) index3로 넘어가고 값을 가져가지 않는다. parameter에 값을 넣어주면 가져감
	response.sendRedirect("index3.jsp");
%>


</body>
</html>