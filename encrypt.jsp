<%@ include file="Ownerheader.jsp"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>

<font color="333399" size=+1><b>DataUser</b><b>&nbsp;:&nbsp;</b></font><font color="ff00cc" size=+1 ><%=(String)session.getAttribute("uid")%>
<%! String data1=null;%>
<% 
String u =(String)session.getAttribute("uid");
String fid=request.getParameter("fid");
String ckey=request.getParameter("ckey");
System.out.println("ckey="+ckey);
session.setAttribute("ckey",ckey);
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();Statement st3=con.createStatement();

ResultSet i=st.executeQuery("select *from filedata");
if(i.next())
{ String token=null,pkey=null;
	byte b[]=i.getBytes(3);
	//String data=new String(b);
	//byte b2[]=data.getBytes();
PreparedStatement ps=con.prepareStatement("update filedata set file_=AES_ENCRYPT(?,'"+ckey+"') where fid='"+fid+"'");
ps.setBytes(1,b);
ps.executeUpdate();
 ResultSet i1=st3.executeQuery("select *from filedata");
if(i1.next())
	{
byte b1[]=i1.getBytes(3);
data1=new String(b1);
	}
Statement st1=con.createStatement();
ResultSet r=st1.executeQuery("select token from token where uid='"+uid+"' ");
if(r.next())
	{
	token=r.getString(1);
	}
ResultSet r2=st2.executeQuery("select pkey from signup where userid='"+uid+"' ");
if(r2.next())
	{
	pkey=r2.getString(1);
	
	}
 
%>

<center>	 	
<form action="fupload1.jsp">
	<table align=center>
	
	<tr>
		<td><font color="red" size=+1><b>FileID</td><td><input type="text" name="fid" value=<%=i.getString(1)%>></td>
	</tr><tr></tr>
	<tr>
		<td><font color="0066ff" size=+1><b>FileName</td><td><input type="text" name="fnm" value=<%=i.getString(2)%>></td>
	</tr><tr></tr>
	
<tr>
	<td><font color="666633" size=+1><b>EncryptData</td>
	<td><textarea name="file" cols="50" rows="10"><%=data1%></textarea></td>
</tr><tr></tr>

<tr>
<tr><td><font color="ff00cc" size=+1><b>File&nbsp;Token</td><td><input type="text" name="token" value=<%=token%>></td></tr><tr></tr><tr></tr>
<tr><td><font color="ffcc00" size=+1><b>Privilages</td><td><input type="text" name="pkey" value=<%=pkey%>></td></tr><tr></tr><tr></tr><tr></tr><tr></tr>

</table>

<tr>

<table align="center">
<tr><td width="60%"><input type="image" src="images/up.png" name="image" width="150" height="50"><center></center></td></tr>


</table>



</table>
</form><%}%><br><br><br>
<%@ include file="Ownerfooter.jsp"%>