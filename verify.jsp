<%@ include file="Ownerheader.jsp"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>

<font color="red">WELCOME</font>:<%=(String)session.getAttribute("uid")%>
<%
String u=request.getParameter("uid");
String pkey=request.getParameter("pkey");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
String tken=(String)session.getAttribute("token");
ResultSet r=st.executeQuery("select  fid,userid from servicecloud where userid='"+u+"' and pkey='"+pkey+"' and token='"+tken+"' ");
System.out.println("tken="+tken);
if(r.next())
	{ session.setAttribute("fid",r.getString(1));
	session.setAttribute("userid",r.getString(2));
	response.sendRedirect("dfupload.jsp");
	}
	else{
response.sendRedirect("pow.jsp?msg=fail");
	}


%>

<!-- 
<center><img src="images/hybrid-cloud1.png" width=700 height=300>	 -->	
<%@ include file="Ownerfooter.jsp"%>