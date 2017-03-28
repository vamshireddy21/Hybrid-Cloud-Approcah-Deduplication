<%@ page import="databaseconnection.*"%>
<%@ page import="Hash.HMAC_SHA"%>
<%@ page import="java.sql.*"%>
<%
String uid=request.getParameter("uid");
String ftoken=request.getParameter("ftoken");
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();

int i1=st.executeUpdate("insert into duplcheck values('"+uid+"','"+ftoken+"')");
//st2.executeUpdate("delete from treq where uid='"+uid+"'");
System.out.println("i1="+i1);
if(i1>0){
response.sendRedirect("fileToken.jsp?sentSuccessfully");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>



