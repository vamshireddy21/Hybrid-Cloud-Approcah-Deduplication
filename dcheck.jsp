<%@ page import="databaseconnection.*"%>

<%@ page import="java.sql.*"%>
<%
String uid=request.getParameter("uid");
String ftoken=request.getParameter("ftoken");
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();

int i1=st.executeUpdate("insert into duplcheck values('"+uid+"','"+ftoken+"')");
st2.executeUpdate("delete from duplcheck where uid='"+uid+"'");
if(i1>0){
response.sendRedirect("tokenReq.jsp?sentSuccessfully");
	}
}}
catch(Exception e)
{
	e.printStackTrace();
}
%>



