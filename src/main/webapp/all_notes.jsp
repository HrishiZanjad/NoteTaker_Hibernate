<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All notes : Note Taker</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
	
	<div class="container">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-upperclass">All Notes:</h1>
		<%
			Session s=FactoryProvider.getFactroy().openSession();
			Query q=s.createQuery("from Note");
			List<Note> list=q.list();
			for(Note note:list){
				out.println(note.getId()+" : "+note.getTitle()+"<br>");
			}
			
			
			s.close();
		%>
		
		
	</div>
	
</body>
</html>