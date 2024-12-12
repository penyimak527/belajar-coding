<?php
session_start();
$id_barang = $_GET['id_produk'];
unset($_SESSION['keranjang'] [$id_barang]);
echo"<script>alert('produk telah dihapus');</script>";
echo"<script>location='index.php?page=keranjang';</script>";

?>