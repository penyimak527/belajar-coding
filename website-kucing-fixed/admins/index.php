
<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}

?>
<?php include 'includes/header.php';?>

<?php
$page = isset($_GET['page']) ? $_GET['page'] : 'dashboard';		//untuk isset dan get itu disesuaikan dengan navbar
$pathpage = 'contents/' . $page . '.php';
if(file_exists($pathpage)){
	include $pathpage;
}
else{
	echo "<h1>404 - page tidak ditemukan</h1>";
}

?>

<?php
// $_SESSION['username'] = $username; // Simpan username atau ID pengguna ke dalam session

// var_dump($_SESSION);
//memeriksa sudah login atau ga
if(!isset($_SESSION['id_admin'])){
	header("Location: login/login.php");		//arah ke login
	exit();
}
?>
	</main>
	</div>
	<footer>
		<p>&copy; 2024 Website Dinamis</p>
		<p></p>
	</footer>
</body>
</html>
