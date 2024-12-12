<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Dashboard Cat</title>
	<link rel="stylesheet" href="../admins/asets/style.css">

</head>
<body>
	<header>
		<div class="judul">
			<h1>Halaman Admin</h1>
		</div>
	</header>
	<div class="conten">
	<div class="nav">
		<?php include 'includes/navbar.php';?>
	</div>
	<main>
		
<?php
include "koneksi1.php";
if(!isset($_SESSION['id_admin'])){
    header("Location: login/login.php");        //arah ke login
    exit();
}   
?>