<?php
// Establishing connection with server..
 $connection = mysql_connect("localhost", "root", "");

// Selecting Database 
 $db = mysql_select_db("college", $connection);

//Fetching Values from URL  
$name=$_POST['name1'];
$email=$_POST['email1'];
$password= sha1($_POST['password1']);  // Password Encryption, If you like you can also leave sha1

// check if e-mail address syntax is valid or not
$email = filter_var($email, FILTER_SANITIZE_EMAIL); // sanitizing email(Remove unexpected symbol like <,>,?,#,!, etc.)

if (!filter_var($email, FILTER_VALIDATE_EMAIL))
 {
    echo "Invalid Email.......";
 }
else
 {
	$result = mysql_query("SELECT * FROM registration WHERE email='$email'");
        $data = mysql_num_rows($result);
	        
	if(($data)==0)
      {
		//Insert query 
	   $query = mysql_query("insert into registration(name, email, password) values ('$name', '$email', '$password')");
		if($query)
		   {
			  echo "You have Successfully Registered.....";
		   }
		else
		   {
			  echo "Error....!!";   
		   }
	} 
	else
	{
		echo "This email is already registered, Please try another email...";
	}  
 }
 
//connection closed
mysql_close ($connection);
?>