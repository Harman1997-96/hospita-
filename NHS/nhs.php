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
$symptoms=$_POST['symptoms'];

//$room = $_POST['room'];// 


$nhs= "INSERT INTO nhs(name,email,tel,symptoms) values ('$name','$email','$tel','$symptoms')";

if (($_SESSION['email'])!=$_POST['email']) {
   $_SESSION['msg'] = "You have to log in first";
   
  
  //echo' <script>alert("Please login first to check availability of rooms in BEST WESTERN PLUS") </script>';

   
   header('location:login.html');
   
}	
else
{
	mysqli_query($con, $nhs);

	//echo ' <script>alert("check our rooms and book ur day in Best western plus"); </script>';
	 header('location:index.html');
 
}
?>