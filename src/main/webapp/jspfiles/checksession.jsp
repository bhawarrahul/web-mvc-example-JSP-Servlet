<%-- <%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	HttpSession nsession = request.getSession(false);
	if (nsession != null) {
		RequestDispatcher rd = request.getRequestDispatcher( "/jspfiles/loginform.jsp");
		rd.forward(request, response);
%>

<jsp:forward page="../jspfiles/loginform.jsp" />
<%
	}
%> --%>