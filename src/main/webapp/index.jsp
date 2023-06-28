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

<!-- html 주석문 -->

<%-- jsp 주석문 --%>

<%--
		JSP(Java Server Page) -> java -> DB접근이 용이(언제든 접근 가능)
		EJB	-> Spring frame work -> Spring Boot
		
		Servlet = java(html)
		JSP = html(java)
--%>
<h3>Hello JSP</h3>

<p>welcome to JSP world</p>

<%
	// java 영역
	// script + applet = scriptlet
	/*  
		범위 주석문
	*/
	// int number = 0;
%>
<!-- <p> counter : 1</p>
<p> counter : 2</p>
<p> counter : 3</p>
<p> counter : 4</p>
<p> counter : 5</p>
<p> counter : 6</p>
<p> counter : 7</p>
<p> counter : 8</p>
<p> counter : 9</p>
<p> counter : 10</p> -->

<%
	for(int i=1; i<=10;i++){
		%>
		<p>카운터 : <%=i %></p>
		<%
}
%>

<%-- scriptlet 영역의 종류 --%>

<%-- 선언부(전역변수, 함수, 클래스) --%>
<%!
int glNumber = 0;

void func(){
	System.out.println("func()호출");
}
int plus(int n1, int n2){
	return n1+ n2;
}

class Human{
	private int number;
	private String name;
	
	public Human(){
		number = 1;
		name ="홍길동";
	}
	public String print(){
		return number + " " + name;
	}
}

%>
<%-- 코드부(지역변수, logic) --%>
<%
int number = 0;

glNumber++;
number++;
func();

// 404(접근할게 없다), 500(문법에러)
// NullPointException

Human h = new Human();

Student st = new Student();

%>
<%-- 값(값만을 취득할 경우)함수(리턴값이 있어야함) --%>
glNumber:<%=glNumber%>
number: <%=number %>

<%=plus(1, 2) %>

<%=h.print() %>

<%=st.print() %>
</body>
</html>