
<%@ include file="Privateheader.jsp"%>
<marquee behavior="alternate" direction="left">

<!-- Marquee Side Touch Margin Bounce Text by Way2Tutorial.com -->
<font color="blue"  name="TimesnewRoman"><STRONG><i> WELCOME TO&nbsp;PRIVATE&nbsp;CLOUD</i></STRONG></font></marquee>
<center>
 
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet i=st.executeQuery("select *from treq");%>
<br><br>
<table align="center" border="4" bordercolor="orange" cellpadding="20" cellspacing="10">
<tr>
	<th><font color="003399" size="3" ><strong>UserID</strong></th>
	<th><font color="003399" size="3" ><strong>FileTag</td>
	<th><font color="003399"size="3" ><strong>Action</td>
	
</tr>

<% while(i.next())
	{%>
<tr>
	<td><font size="4" color="339900"><strong><%=i.getString(1)%></td>
	<td><font size="4" color="339900"><strong><%=i.getString(2)%></td>
    <td><a href="sendToken.jsp?uid=<%=i.getString(1)%>&ftag=<%=i.getString(2)%>"><font size="4" color="339900"><strong>Send</a></td>

</tr><%}%>
</table><br><br><br><br><br><br><br>

<%@ include file="Ownerfooter.jsp"%><font size="4" color="339900"><strong>