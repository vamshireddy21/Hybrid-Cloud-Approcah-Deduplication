<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%! String token=null,status=null;%>
<%@ include file="Ownerheader.jsp"%>
<table><tr><td></td><td></td><td></td><td width="5%"><a href="index.html"><img src="images/lg1.jpg"></a></td></tr></table>
<%

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet i=st.executeQuery("select token,status from token where uid='"+(String)session.getAttribute("uid")+"'");
if(i.next())
{
	token=i.getString(1);
	status=i.getString(2);
}
String u=(String)session.getAttribute("uid");
%><% if(request.getParameter("msg")!=null)
{%>
<p class="blink">	<font color="red" size=2 name="times new roman"><b>Not Authenticated Privilege Key	</p></font>
<%
}%>
<table align="center" cellpadding="5" cellspacing="12">
<tr><td><strong><h4><i> <p class="blink"><font size="3" color="red">Proof of Ownership Protocol:</font></u></strong></i></h4>
<tr>
	<td><strong><font size="3" color="3300cc">UserID</strong></td><td><input type="text" name="uid" value=<%=uid%>></td>
</tr>

<tr>
	<td><strong><font size="3" color="red">Privilege Key</strong></td><td><input type="text" name="pkey"></td><td><a href="getKey.jsp?uid=<%=uid%>&token=<%=token%>"><font size="3" color="green"><h4>GetKey</h4></a></td>

</table><br><br><br>

<%@ include file="Ownerfooter.jsp"%>