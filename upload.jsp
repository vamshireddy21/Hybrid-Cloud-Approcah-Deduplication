<%@ include file="Ownerheaderfup.jsp"%>
<script type="text/javascript">
function val(form){
	alert("k");
	document.form.;
	alert("k1");
}
</script>
<!-- 
<center><img src="images/hybrid-cloud1.png" width=700 height=300>	 -->	
<form action="genHash.jsp">
	<table align=center>
<tr>
	<td>FileId</td>
	<td><input type="text" name="fid"></td>
</tr>
<tr>
	<td>FileName:</td>
	<td><input type="text" name="fnm"></td>
</tr>
<tr>
	<td>Choose File:</td>
	<td><input type="file" name="file"></td>
</tr>
<tr>
	<td><input type="submit" value="HashValue"></td>
	
</tr>


</table>
</form>
<%@ include file="Ownerfooter.jsp"%>