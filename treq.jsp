<%@ include file="Ownerheader.jsp"%>

<table><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td width="10%"><a href="index.html"><img src="images/lg1.jpg"></a></td></tr></table>
<!-- 
<center><img src="images/hybrid-cloud1.png" width=700 height=300>	 -->	
<form action="genHash.jsp">
<font color="663300" size=+1><b>&nbsp;&nbsp;<u><i>File Uploading:</i></u></font>

	<table align=center>
	<tr><td><% if(request.getParameter("fid")!=null)
{%>
<p class="blink">	<font color="red" size=2 name="times new roman"><b>Already FileID &nbsp;&nbsp;is Exsit</b></p></font></td></tr>
<%
}%>
	<tr>
		<td ><font color="ff0033" size="2"><b>FileID</td><td><input  type="number"  name="fid" required></td>
	</tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
	<tr>
		<td><font color="0000ff" size="2"><b>FileName</td><td><input type="text" name="fnm" required></td><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
	</tr>
	
<tr>
	<td><font color="996600" size="2"><b>Choose File</td>
	<td><input type="file" name="file" required></td>
</tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>

<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>

<tr>
	<td></td><td><input type="image" src="images/hash.png" name="image" width="150" height="30"><center></center></td></tr>
	
</tr>

<td>
</table>
</form><br><br><br>
<%@ include file="Ownerfooter.jsp"%>