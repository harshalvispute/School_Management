<%@page import="School.Teacher"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
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
  String id = request.getParameter("id");
 int id1 = Integer.parseInt(id);
 
 EntityManagerFactory emf = Persistence.createEntityManagerFactory("harshal");
 EntityManager em = emf.createEntityManager();
 
 Teacher T = em.find(Teacher.class, id1);
 
%>
<form action="update" method="post">
id : <input type="text" value="<%=T.getId()%>" name="id"><br><br>
name : <input type="text" value="<%=T.getName()%>" name="name"><br><br>
salary : <input type="text value="<%=T.getSal() %>" name="salary"><br><br>
Subject : <input type="text" value="<%=T.getSub()%>" name="subject"><br><br>
</form>

</body>
</html>