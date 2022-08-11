<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "hospital";


$name = $_POST['name'];
$email = $_POST['email'];
$pswd = $_POST['pswd'];

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$reg = "INSERT INTO reg (name,email, pswd) values ('$name','$email','$pswd')";
mysqli_query($conn, $reg);
$_SESSION['email'] = $email;
header('location:index.html');										


$conn->close();
?>
