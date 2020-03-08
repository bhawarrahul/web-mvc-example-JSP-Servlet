<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<title>Employee Details</title>
</head>
<body>
	<%
		String[][] employeeData = { { "101", "Mukesh", "123", "Chennai" }, { "102", "Ravi", "258", "Gurgaon" },
				{ "103", "Amit", "695", "Gurgaon" }, { "104", "Vicky", "897", "Noida" },
				{ "105", "Golu", "745", "Patna" } };
		request.setAttribute("empdata", employeeData);
	%>
	Employee Details
	<table border="1">
		<tr>
			<th>EMP ID</th>
			<th>Name</th>
			<th>Phone</th>
			<th>City</th>
		</tr>
		<c:forEach var="employee" items="${empdata}">
			<tr>
				<td>${employee[0]}</td>
				<td>${employee[1]}</td>
				<td align="center">${employee[2]}</td>
				<td align="center">${employee[3]}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>