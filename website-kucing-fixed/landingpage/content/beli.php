<?php

include "./landingpage/includes/import.php";
session_start();

$id_barang = $_GET['id_produk'];

if(isset($_SESSION['keranjang'][$id_barang])){
    $_SESSION['keranjang'] [$id_barang] += 1;        //untuk $id_barang jangan pakai""   nanti dikira literaly    dan harus sebelum = ada penambahan
 }
 else{
    $_SESSION['keranjang'][$id_barang] = 1;
 }

 echo"<pre>";
print_r($_SESSION);     //untuk melihat sesi keranjang berjalan
echo"</pre>";
//larikan ke halaman keranjang
echo"<script>alert('produk telah masuk ke keranjang belanja ');</script>";
echo "<script>location='index.php?page=keranjang';</script>";


?>


