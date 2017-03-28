<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>

<%String uid=(String)session.getAttribute("uid");

String hash=request.getParameter("hash");
//session.setAttribute("uid",uid);
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
int i=st.executeUpdate("insert into treq values('"+uid+"','"+hash+"')");
if(i>=0)
	{
	response.sendRedirect("treq.jsp?SendSuccessfully");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>



