<%@ include file="Ownerheader.jsp"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>

<font color="333399" size=+1><b>DataUser</b><b>&nbsp;:&nbsp;</b></font><font color="ff00cc" size=+1 ><%=(String)session.getAttribute("uid")%>
<%

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
ResultSet i=st.executeQuery("select *from filedata");
if(i.next())
{ String token=null,pkey=null;
	byte b[]=i.getBytes(3);
	String data=new String(b);

Statement st1=con.createStatement();
ResultSet r=st1.executeQuery("select token from token where uid='"+uid+"' ");
if(r.next())
	{
	token=r.getString(1);
	}
ResultSet r2=st2.executeQuery("select userid,passwrd,eid from signup where userid='"+uid+"' ");
if(r2.next())
	{
	pkey=r2.getString(1)+r2.getString(2)+r2.getString(3);
	
	}

%>

<!-- 
<center><img src="images/hybrid-cloud1.png" width=700 height=300>	 -->	
<form action="encrypt.jsp">
	<table align=center>
	
	<tr>
		<td><font color="red" size=+1><b>FileID</td><td><input type="text" name="fid" value=<%=i.getString(1)%>></td>
	</tr><tr></tr>
	<tr>
		<td><font color="0066ff" size=+1><b>FileName</td><td><input type="text" name="fnm" value=<%=i.getString(2)%>></td>
	</tr><tr></tr>
	
<tr>
	<td><font color="666633" size=+1><b>FileData</td>
	<td><textarea name="file" cols="50" rows="10"><%=data%></textarea></td>
</tr><tr></tr>

<tr><td><font color="330000" size=+1><b>Convergent&nbsp;Key</td><td><input type="text" name="ckey" value=<%=i.getString(4)%>></td></tr><tr></tr><tr></tr>

</table>

<table align="center">
<tr><td></td><td></td><td width="60%"><input type="image" src="images/en2.jpg" name="image" width="150" height="40"><center></center></td></tr>


</table>
</form><%}%><br><br><br>
<%@ include file="Ownerfooter.jsp"%>