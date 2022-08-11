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
  $name=$_POST['name'];
	$email = $_POST['email'];  
    $pswd = $_POST['pswd'];  
      
        //to prevent from mysqli injection 
 $name = stripcslashes($name);		
        $email = stripcslashes($email);  
        $pswd = stripcslashes($pswd); 
$name = mysqli_real_escape_string($con, $name); 		
        $email = mysqli_real_escape_string($con, $email);  
        $pswd = mysqli_real_escape_string($con, $pswd);  
      
        $sql = "select *from reg where name='$name'and email = '$email' and pswd = '$pswd'";  
        $result = mysqli_query($con, $sql);
 
             
           
             		
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);  
          
        if($count == 1){
$_SESSION['email'] = $email;			
           header('location:index.html');
        }  
        else{  
            echo "<script>alert(' Login failed. Invalid email or pswd.')</script>";  
        }  
	
?>  
