<%@ include file="Ownerheader.jsp"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>

<%

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String fid=request.getParameter("fid");
ResultSet i=st.executeQuery("select *from servicecloud where fid='"+fid+"'");
if(i.next())
{ 
	byte b[]=i.getBytes(4);
	String data=new String(b);
	%>
<font size="4" color="ffcc00"><b>
<table cellspacing="10" align="center"><tr>
<td>FileID</td><td><input type="text" name="fid" value=<%=fid%>></td></tr>
	<td>FileData</td>
	<td><textarea name="file" rows="10" cols="30"><%=data%></textarea></td>
</tr>
<tr><td>Convergent&nbsp;Key</td><td><input type="text" name="ckey" size="30"size="30"size="30" value="<%=i.getString(5)%>"></td><td><a href="GetKey2.jsp?fid=<%=fid%>">Get&nbsp;PrivilegeKey</tr>

</table>
</form><%}%>
</font><br><br><br>
<%@ include file="Ownerfooter.jsp"%>