<%@ page import="com.project.user.dao.UserDao" %>
<jsp:useBean id="user" class="com.project.user.model.User"></jsp:useBean>
<jsp:setProperty property="*" name="user" />

<%
	int saveCount = UserDao.save(user);
	if (saveCount > 0) {
		response.sendRedirect("adduser-success.jsp");
	} else {
		response.sendRedirect("adduser-error.jsp");
	}
%>
