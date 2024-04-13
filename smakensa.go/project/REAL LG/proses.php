
<?php
$koneksi = mysql_connect("localhost", "root", "form");

$nama = $_post("Nama");
$kelas = $_post("Kelas");
$jurusan = $_post("Jurusan");
$tempat = $_post("Tempat");

$query = "INSERT INTO identitas VALUE('$nama', '$kelas', '$jurusan', '$tempat')";

mysqli_query($koneksi, $query);


?>