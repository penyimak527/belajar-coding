<?php
var_dump($_GET['id_kontak']);
$koneksi = mysqli_connect("localhost","root","","cat"); 
$id_kontak = intval($_GET['id_kontak']);
$ambildata = $koneksi->query("SELECT * FROM kontak WHERE id_kontak = '$id_kontak'");

// periksa data
if($ambildata->num_rows > 0){
	$datapecah = $ambildata ->fetch_assoc();

	if($koneksi -> query("DELETE FROM kontak WHERE id_kontak = '$id_kontak'")){
		echo"<script>alert('laporan pengguna telah dihapus');</script>";
	}else{
		echo"Error : " . $koneksi->error;
	}

}else{
	    echo "Laporan tidak ditemukan.<br>";

}
// Redirect ke halaman products
echo "<script>location='index.php?page=reports'</script>";
?>