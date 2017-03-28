<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%
String unm=request.getParameter("unm");
String uid=request.getParameter("uid");
String pwd=request.getParameter("pwd");
String eid=request.getParameter("eid");
String mno=request.getParameter("mno");
try{
Connection con=databasecon.getconnection();
PreparedStatement pt=con.prepareStatement("insert into signup(uname,userid,passwrd,eid,mno) values(?,?,?,?,?)");
pt.setString(1,unm);
pt.setString(2,uid);
pt.setString(3,pwd);
pt.setString(4,eid);
pt.setString(5,mno);
int i=pt.executeUpdate();
if(i==1)
	{
	response.sendRedirect("DataOwner.jsp?msg=success");
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>



