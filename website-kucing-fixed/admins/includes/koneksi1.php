<?php
$servername = 'localhost';
$username = "root"; // Ganti dengan username database Anda
$password = ""; // Ganti dengan password database Anda
$dbname = "cat";
// Buat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);			//ini koneksinya
// Periksa koneksi
if ($conn->connect_error) {			//cek terhubung atau tidak
die("Koneksi gagal: " . $conn->connect_error);
}
?>
