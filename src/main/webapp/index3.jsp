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

<h1>index3.jsp</h1>

 <%
	// 짐풀러
	//Student s = (Student)request.getAttribute("student");
 	Student s = (Student)session.getAttribute("student");
%>
<p><%=s.print() %></p> 


<%
//String name = request.getParameter("name");
%>
<%-- <%=name %> --%>
</body>
</html>