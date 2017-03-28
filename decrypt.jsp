<%@ include file="Ownerheader.jsp"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>


<%
String pkey=null,ckey=null;
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();
String fid=request.getParameter("fid");
System.out.println("fid="+fid);
ResultSet rr=st1.executeQuery("select pkey from servicecloud where fid='"+fid+"'");
if(rr.next())
{
pkey=rr.getString(1);
System.out.println("pkey="+pkey);

}
ResultSet rr1=st2.executeQuery("select AES_DECRYPT(ckey,'"+pkey+"') from servicecloud where fid='"+fid+"'");
if(rr1.next())
{
ckey=rr1.getString(1);
System.out.println("ckey="+ckey);
}

ResultSet i=st.executeQuery("select fid,fname,AES_DECRYPT(fdata,'"+ckey+"')from servicecloud where fid='"+fid+"'");
System.out.println("i="+i);
if(i.next())
{ System.out.println("i=");
	byte b[]=i.getBytes(3);
	System.out.println("i="+b);
	String d1=b.toString();
	System.out.println("d1="+d1);
	String data=new String(b);
	%><br><br>
	<font size="4" color="ff9900">
	<table cellspacing=10 align="center">
<td>FileID:</td><td><input type="text" name="fid" value=<%=fid%>></td></tr><tr></tr><tr></tr>
<tr><td>FileName:</td><td><input type="text" name="fname" value=<%=i.getString(2)%>></td></tr><tr></tr><tr></tr>
	<tr><td>FileData:</td>
	<td><textarea name="file" cols="60%" rows="20%"><%=data%></textarea></td>
</tr></table>
<table align="center">
<tr><td><a href="finalDownload.jsp?fid=<%=fid%>&ckey=<%=ckey%>"><img src="images/dwn.png" width="160" height="36" border="0" alt=""></a></td></tr>

</table></font>
</form><%}%><br><br><br><br><br><br>
<%@ include file="Ownerfooter.jsp"%>