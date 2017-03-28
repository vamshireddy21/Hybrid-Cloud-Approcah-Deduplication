<%
String sts=request.getParameter("sts");
String token=request.getParameter("token");
if(sts.equals("NotDuplicate")){

	response.sendRedirect("fupload.jsp");

}
else{
	session.setAttribute("token",token);
	response.sendRedirect("pow.jsp");
}%>