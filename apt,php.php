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
	
$name = $_POST['fname'];
$hname = $_POST['lname'];
$dname = $_POST['dname'];
$phno = $_POST['phno'];
$sym = $_POST['sym'];
$date = $_POST['date'];

$errorMessage = "";

$wjbook= "INSERT INTO wjbook(fname,lname,dname,phno,sym) VALUES ('$fname','$lname','$dname','$phno','$sym','$date')";


if (($_SESSION['name'])!=$_POST['name']) 
{
    $_SESSION['msg'] = "You have to log in first";
    header('location: wjlog.html');
}	
else
{
	mysqli_query($con, $wjbook);
	{
	echo '<script>alert("available")</script>';
}
if($errorMessage != "") 
  {
    echo("<p>There was an error with your form:</p>\n");
    echo("<ul>" . $errorMessage . "</ul>\n");
  } 
  else 
  {
    // note that both methods can't be demonstrated at the same time
    // comment out the method you don't want to demonstrate

    // method 1: switch
    $redir = "pay13.php";
    switch($room)
    {
       case "PREMIUM ROOM": $redir = "pay13.php"; break;
      case "SUPERIOR ROOM": $redir = "pay14.php"; break;
      case "DELUXE ROOM": $redir = "pay15.php"; break;
      
      default: echo("Error!"); exit(); break;
    }
    echo " redirecting to: $redir ";
    
    header("Location: $redir");
    // end method 1
  }
}
?>






