<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Cats</title>
	
<link rel="icon" type="png" href="landingpage/asets/img/icon.png">
	<link rel="stylesheet" type="text/css" href="landingpage/asets/style.css">
</head>
<body>
	<style>
		header{
			display: block;
		}
		.login{
	width: 100px;	
	background-color: #FF9C73;
	padding: 0.3rem;
	border-radius: 5px;

}
.login a{
	font-size: 1.2rem;
	text-decoration: none;
	color: black;

	}
	header {
			display: flex;
			align-items: center;
			justify-content: space-between;
			padding: 1rem;
		}
		header img {
			width: 100px;
			height: auto;
		}
		
	</style>
	<header>
		<!-- img gak bisa digunakan -->
		<img src="../asets/img/logo-no-background.png" alt="" >
		
		<h1>Toko Kucingku</h1>
		<div class="login">
            <?php if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true): ?>
                <a href="landingpage/daftar/logout.php">Logout</a> <!-- Tampilkan Logout jika sudah login -->
            <?php else: ?>
                <a href="landingpage/daftar/login.php">Login</a> <!-- Tampilkan Login jika belum login -->
            <?php endif; ?>
	</header>
	<div class="container">
		<aside>
		<?php include 'landingpage/includes/sidebar.php'; ?>
	</aside>

<main>
	