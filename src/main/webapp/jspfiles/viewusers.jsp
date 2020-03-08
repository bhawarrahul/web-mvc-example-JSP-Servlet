<!DOCTYPE html>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html"%>
<%@ page import="java.util.*"%>
<%@ page
	import="com.project.user.dao.UserDao,com.project.user.model.User"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix = "ex" uri = "/WEB-INF/customtag.tld"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="../css/style.css" rel="stylesheet" type="text/css">
<title>View Users</title>
</head>
<body>
<jsp:include page="../jspfiles/checksession.jsp"></jsp:include>
	<h1>Users List</h1>
	<%
		List<User> list = UserDao.getAllRecords();
		request.setAttribute("list", list);
		pageContext.setAttribute("list", list);
	%>
	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>Sex</th>
			<th>Country</th>
		</tr>
		<c:forEach var="userObj" items="${list}">
			<tr>
				<td>${userObj.getId()}</td>
				<td>${userObj.getName()}</td>
				<td>${userObj.getPassword()}</td>
				<td>${userObj.getEmail()}</td>
				<td>${userObj.getSex()}</td>
				<td>${userObj.getCountry()}</td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="../htmlfiles/userform.html">Add New User</a>
	<br/>
	<br/>
	<ex:TagExample/>
</body>
</html>
