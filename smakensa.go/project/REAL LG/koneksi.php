<?php
$servername = "localhost";
$database = "form";
$username = "root";
$password = "";

// Create connection
$conn = mysqli_connect($servername, $username, $password ,$database);

// Check connection
if (!$conn) {
    die("koneksi gagal: " . mysqli_connect_error());
}
else{
echo "koneksi berhasil";
}
mysqli_close($conn);

