<?php 

include "./landingpage/includes/import.php";
// if (!isset($_SESSION ['loggedin'])) {
// 	echo "<script>alert('silahkan login terlebih dahulu');</script>";
// 	 echo "<script>location='landingpage/daftar/login.php';</script>";
// 	    exit();
    
// 
if (!isset($_SESSION['keranjang'])) {
	echo "<script>alert('silahkan berbelanja terlebih dahulu');</script>";
	    echo "<script>location='index.php?page=menu';</script>";
	    exit();
}


?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Selesai</title>
</head>
<?php 

?>
<body>
	<h2>Pembelian sudah selesai</h2>
	<p>terimakasih Telah Berbelanja di sini, <?php print_r($_SESSION['nama']);?> &#128075</p>	

</body>
</html>