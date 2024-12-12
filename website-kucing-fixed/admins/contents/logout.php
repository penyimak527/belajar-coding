<?php
include './includes/koneksi1.php';


session_start();  
session_unset();
session_destroy();
header("Location: ./login/login.php");
exit(); 
?>
