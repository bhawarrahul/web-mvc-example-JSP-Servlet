package com.main.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.*;

public class HomeServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.println("<html>");
		out.println("<head>");
		out.println("<title>Web MVC App</title>");
		out.println("</head>");
		out.println("<body bgcolor=\"white\">");
		out.println("<p>Web Application using JSP and Servlet</p>");
		out.println("</body>");
		out.println("</html>");
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		this.doGet(request, response);
	}
}
