<%@ page import="databaseconnection.*"%>
<%@ page import="Hash.HMAC_SHA"%>
<%@ page import="java.sql.*"%>
<%
String uid=(String)session.getAttribute("uid");
String fid=request.getParameter("fid");
String fnm=request.getParameter("fnm");
String rfid=request.getParameter("rfid");
try{
	
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
 
PreparedStatement p=con.prepareStatement("insert into reference values('"+fid+"','"+rfid+"','"+fnm+"','"+uid+"')");
int i1=p.executeUpdate();

//
System.out.println("i1="+i1);
if(i1>0){
st2.executeUpdate("delete from treq");
st2.executeUpdate("delete from token");
st2.executeUpdate("delete from filedata");
st2.executeUpdate("delete from duplcheck");

response.sendRedirect("treq.jsp?UploadedSuccessfully");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>



