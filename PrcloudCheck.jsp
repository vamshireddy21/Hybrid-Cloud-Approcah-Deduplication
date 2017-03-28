<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%
String uid=request.getParameter("uid");
String pwd=request.getParameter("pwd");

if(uid.equals("privatecloud") && pwd.equals("privatecloud"))
	{session.setAttribute("uid",uid);
	response.sendRedirect("PrivateHome.jsp");
	}else{
response.sendRedirect("prcloud.jsp?msg=fail");
	}


%>



