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
$symptoms = $_POST['symptoms'];



$wjavail= "INSERT INTO wjavail(name,email,tel,symptoms,) values ('$name','$email','$tel','$symptoms',)";

if (($_SESSION['email'])!=$_POST['email']) {
   $_SESSION['msg'] = "You have to log in first";
   header('location: login.html');
}	
else
{
	mysqli_query($con, $wjavail);
	
	header('location: index.html');
}
?>