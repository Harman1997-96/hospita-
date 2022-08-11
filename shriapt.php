<?php
session_start();
    $servername = "localhost";
$username = "root";
$password = "";
$dbname = "hospital";
    $con = mysqli_connect($servername, $username, $password, $dbname);  
    if(mysqli_connect_errno()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    }  
$name = $_POST['name'];
$email = $_POST['email'];
$tel = $_POST['tel'];
$sym = $_POST['sym'];
$date = $_POST['date'];

$errorMessage = "";

$shriapt= "INSERT INTO shriapt(name,email,tel,sym,date) VALUES ('$name','$email','$tel','$sym','$date')";


if (($_SESSION['email'])!=$_POST['email']) 
{
    $_SESSION['msg'] = "You have to log in first";
    header('location: login.html');
}	
else
{
	mysqli_query($con, $shriapt);
	{
		header('location:thanku.html');
	echo '<script>alert("available")</script>';
}
}
?>