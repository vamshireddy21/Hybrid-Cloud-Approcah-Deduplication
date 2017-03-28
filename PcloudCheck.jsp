<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%
String uid=request.getParameter("uid");
String pwd=request.getParameter("pwd");

if(uid.equals("publiccloud") && pwd.equals("publiccloud"))
	{session.setAttribute("uid",uid);
	response.sendRedirect("PublicHome.jsp");
	}
else{
response.sendRedirect("pcloud.jsp?msg=fail");
	}

%>



