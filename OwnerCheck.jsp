<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%
String uid=request.getParameter("uid");
String pwd=request.getParameter("pwd");
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet i=st.executeQuery("select *from signup where userid='"+uid+"' and passwrd='"+pwd+"'");
if(i.next())
	{session.setAttribute("uid",uid);
	response.sendRedirect("OwnerHome.jsp");
	}
	else{
response.sendRedirect("OwnerLogin.jsp?msg=fail");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>



