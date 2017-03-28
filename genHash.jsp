<%@ page import="java.io.*"%>
<%@ page import="Hash.*"%>
<%@ include file="Ownerheader.jsp"%>
<%! File f=null;%>
<%!String uid=null;%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%String s=(String)session.getAttribute("uid");%>

<%  
String fid=request.getParameter("fid");
String fnm=request.getParameter("fnm");
String file=request.getParameter("file");
String path="D:/Apache Tomcat/webapps/HCD/file/";
f=new File(path+file);

 String hash=HashValue.hashFile(f,"SHA-1");  

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
String sql="select *from filedata where fid="+fid+"";
ResultSet r1=st.executeQuery(sql);
System.out.println("sql="+sql);
String sql2="select *from servicecloud where fid='"+fid+"'";
System.out.println("sql2="+sql2);

ResultSet r2=st1.executeQuery(sql2);
if(r1.next())
{System.out.println("r1");
	response.sendRedirect("treq.jsp?fid='f'");
}
else{

if(r2.next())
{System.out.println("r2");
	response.sendRedirect("treq.jsp?fid='f'");
}
else{System.out.println("r3");
FileInputStream fis=new FileInputStream(f);
PreparedStatement p=con.prepareStatement("insert into filedata(fid,fname,file_,hash) values(?,?,?,?)");
p.setString(1,fid);
p.setString(2,fnm);
p.setBinaryStream(3,(InputStream)fis,(int)(f.length()));
p.setString(4,hash);
int r=p.executeUpdate();
fid=null;
}
}

%>
<input type="hidden" value=<%=fid%> name="fid">
<!-- 
<center><img src="images/hybrid-cloud1.png" width=700 height=300>	 -->	
<form action="Treq1.jsp">
	<table align=center>

<tr>
	<td><font color="ff0000" size=+1><b>HashCode:</b></td>
	<td bgcolor="pink"><textarea style="color: red; background-color:ff0099" name="hash"cols="90" rows="20" ><%=hash%></textarea></td>
</tr></table><table align="center">
<tr><td width="60%"><input type="image" src="images/token.png" name="image" width="150" height="50"><center></center></td></tr>
  


</table>
</form>
<%@ include file="Ownerfooter.jsp"%>