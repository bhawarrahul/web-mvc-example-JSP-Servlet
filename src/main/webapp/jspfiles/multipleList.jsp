<!DOCTYPE html>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html"%>
<%@ page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
</head>
<body>
	<h1>List</h1>
	<%
		List<String> list1 = Arrays.asList("A", "B", "C", "D", "E", "F", "G");
		List<Integer> list2 = Arrays.asList(1, 2, 3, 4, 5, 6, 7);
		List<List> finalList = new ArrayList<>();
		finalList.add(list1);
		finalList.add(list2);
		pageContext.setAttribute("list", finalList);
	%>
	<c:forEach items="${list}" var="post" varStatus="theCount">
		<p>List ${theCount.count}</p>
		<c:forEach items="${post}" var="value" varStatus="cell">
			${value} &nbsp;
		</c:forEach>
	</c:forEach>
</body>
</html>
