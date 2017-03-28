<head>
<script>input[type=submit] {
  background:url(images/lg.jpg);
}</script>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>
<%@ include file="header.jsp"%>
<table >
	<tr><td width="50%"><img src="images/droptoflare.png" width=260 height=270>	
</td>
<td width="70%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<% if(request.getParameter("msg")!=null)
{%>
<p class="blink">	<font color="red" size=2 name="times new roman"><b>Incorrect UserID or Password	</p></font>
<%
}%>
	<form action="PrcloudCheck.jsp">
		<div >
		<font color="blue"><strong><b><u>Private Cloud Login:</u></b></strong></font>

		<table width=200>
		     
				<tr><td><strong><font color="cc0099">UserID *: <input type="text" name="uid" required/><br></td></tr>
 
			 <tr><td><strong><font color="cc0099">Password *: <input type="password" name="pwd"  required/><br></td></tr>
 
			

		<tr></tr><tr><td width="60%"><input type="image" src="images/lgn2.png" name="image" width="150" height="30"><center></center></td></tr>

		</div>
	</form></td></table>
	<td><img src="images/cloud_key-512.png" width=260 height=270></a></td>
 


</td></table>
<br><br>	</div>
  </div>
  <div class="footer">
    <div class="footer_resize"> <a href="index.html"><img src="images/logo_bg.jpg" width="237" height="68" alt="" class="flogo" /></a>
      <div class="drf">
        <ul class="fmenu">
          <li class="active"><a href="index.html">Home</a></li>
          <li><a href="contact.html">Contact</a></li>
        </ul>
        <div class="clr"></div>
        <p class="lf">&copy; Copyright 2014-2015, D & D by  <a href="http://www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fcloudtechnologiespro&width&height=590&colorscheme=light&show_faces=true&header=true&stream=true&show_border=true" target="_blank">Cloud Technologies</a></p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
</div>
</html>
