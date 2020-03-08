
<%@page import="com.project.user.model.User"%>
<%@ page import="com.project.user.dao.UserDao"%>
<jsp:useBean id="obj" class="com.project.user.model.UserLogin" />

<jsp:setProperty property="*" name="obj" />

<%
	User user = UserDao.getUserDetails(obj);
	if (user != null) {
		out.println("You r successfully logged in");
%>
<jsp:include page="../jspfiles/userhome.jsp"></jsp:include>
<%
	session.setAttribute("userName", user.getName());
	} else {
		out.print("Sorry, username or password error");
%>
<jsp:include page="../jspfiles/loginform.jsp"></jsp:include>
<%
	}
%>
