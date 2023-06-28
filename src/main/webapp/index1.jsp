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
	/*
		내장(암시)객체 : new 를 통해서 생성하지 않고 바로 사용할 수 있는 객체
		
		
		out				-> 	web에 출력하는 객체
		request			-> 	매개변수의 값을 취득시 getParameter
							객체를 저장할 시에	setAttribute(잠시저장),getAttribute(불러오기)
							Character 인코딩을 설정
		response		->	웹페이지간에 이동 sendRedirect
		session			->	원하는 시간까지 저장 	setAttribute(저장),getAttribute(불러오기)
		pageContext		->	웹페이지간에 이동 forward
			:
		
	*/
// out
System.out.println("Hello JSP");
out.println("<p>Hello JSP</p>");

%>
<p>Hello JSP</p>
<%
request.setCharacterEncoding("utf-8");

// request(=요청)
String name = request.getParameter("name");
String age = request.getParameter("age");
String hobby[] = request.getParameterValues("hobby");

Student student = new Student();

request.setAttribute("student", student);	// 객체 저장

Student st = (Student)request.getAttribute("student");	// 객체 불러오기
System.out.println(st.print());
%>

<p>이름:<%=name %></p>
<p>나이:<%=age %></p>

<%
for(int i=0;i<hobby.length;i++){
	%>
	<p>취미:<%=hobby[i] %></p>
	<%
}	
%>










</body>
</html>