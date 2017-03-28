
<%@ include file="Publicheader.jsp"%>
<marquee behavior="alternate" direction="left">

<!-- Marquee Side Touch Margin Bounce Text by Way2Tutorial.com -->
<font color="blue"  name="TimesnewRoman"><STRONG><i> WELCOME TO&nbsp;PUBLIC&nbsp;CLOUD</i></STRONG></font></marquee>


<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet i=st.executeQuery("select *from servicecloud");%>
<h4>AllFiles:</h4>
<table border="4" bordercolor="cc3366" cellpadding="5" cellspacing="5">
<tr>
	<th><font color="ffcc00" size="3" ><strong>DataOwner</strong></th>
	<th><font color="ffcc00" size="3" ><strong>FileID</td>
	<th><font color="ffcc00"size="3" ><strong>FileName</td>
	<th><font color="ffcc00"size="3" ><strong>Token</td>
</tr>

<% while(i.next())
	{%>
<tr>
	<td><font color="003399" size="3"><strong><%=i.getString(1)%></td>
	<td><font color="003399" size="3"><strong><%=i.getString(2)%></td>
    <td><font color="003399" size="3"><strong><%=i.getString(3)%></td>
	<td><font color="003399" size="3"><strong><%=i.getString(6)%></td>

</tr><%}%>
</table><br><br><br><br>

<%@ include file="Ownerfooter.jsp"%>