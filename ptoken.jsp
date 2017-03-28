
<%@ include file="Publicheader.jsp"%>
<marquee behavior="alternate" direction="left">

<!-- Marquee Side Touch Margin Bounce Text by Way2Tutorial.com -->
<font color="blue"  name="TimesnewRoman"><STRONG><i> WELCOME TO&nbsp;PUBLIC&nbsp;CLOUD</i></STRONG></font></marquee>
<center>

<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet i=st.executeQuery("select *from treq");%>
<table cellspacing=10 >
<tr>
	<th> <font size="4" color="99cc00">UserID</th>
	<th><font size="4" color="99cc00">FileTag</td>
	<th><font size="4" color="99cc00">Action</td>
</tr>
<% while(i.next())
	{%>
<tr>
	<td><%=i.getString(1)%></td>
	<td><%=i.getString(2)%></td>
    <td><a href="sendToken.jsp?uid=<%=i.getString(1)%>&ftag=<%=i.getString(1)%>">Send</a></td>

</tr><%}%>
</table>


<%@ include file="Ownerfooter.jsp"%>