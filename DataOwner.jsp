<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Cloud</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li ><a href="index.html">Home</a></li>
          
        </ul>
      </div>
      <div class="clr"></div>


	  
	  
	  
	  
	  
	  
	  <div class="clr"></div>
    </div>
<br>
  <div class="hbg">
  <center>
  <br> 
<img src="images/hybrid_logo.jpg"  alt="" class="hbgimg" />  </center>

  </div>
    
	
	</div>
	
	<div class="fbg">
    <div class="fbg_resize">
<table >
<tr><td width="40%"><img src="images/reg.png" width=200 height=200>					
</td>
<td>
<% String msg=request.getParameter("msg");
if(msg!=null)
{%>
<font color="red"><strong><blink>Registered Successfully</blink></strong></font>
<%}%><br><font size="+2" color="006600"><h6>Register Here</h6></font>
	<form action="OwnerReg.jsp">
		<div align="center">
		<table align="center">
		     <tr><td><font size="2" color="0000ff"><font size="" color=""></font></font> <font size="2" color="006600"><strong><h4>OwnerName *</h4></td><td> <input type="text" name="unm" required /></td></tr><tr></tr><tr></tr>
				<tr><td><font size="2" color="006600"><strong><h4>UserID*</h4></td><td> <input type="text" name="uid" required  /><br></td></tr><tr></tr><tr></tr>
 
			 <tr><td><font size="2" color="006600"><strong><h4>Password*</h4></td><td> <input type="password" name="pwd" required /><br></td></tr><tr></tr><tr></tr>
 
			 <tr><td><font size="2" color="006600"><strong><h4>Email*</h4></td><td> <input name="eid"  type="email" required  /><br></td></tr><tr></tr><tr></tr>
 
			<tr><td><font size="2" color="006600"><strong><h4>Mobile*</h4></td><td> <input type="tel"  pattern="[0-9]{10,10}" class="search" name="mno"  autocomplete="off"  maxlength="10" required  required  /><br></td></tr><tr></tr><tr></tr></table>
			<table align="center">
		<tr><td></td><td></td><td></td><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="image" src="images/regs.png" name="image" width="180" height="40"><center></center></td></tr>
		</div>
	</form></table>
	<td>				
</tr></table><br><br>
	
	</div>
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
