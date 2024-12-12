<?php
session_start(); // Mulai session

// Cek apakah pengguna sudah login
if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    echo "<script>alert('Silakan login terlebih dahulu.');</script>";
    echo "<script>location='./login.php';</script>";
    exit();
}

// Akses data session lainnya, misalnya
echo "Selamat datang, " . htmlspecialchars($_SESSION['nama']);
echo "<pre>";
print_r($_SESSION);
echo "</pre>"
?>
