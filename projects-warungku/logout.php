<?php
session_start();

//menghancurkan $_session['pelanggan]
session_destroy();
echo"<script>alert('akun telah logout');</script>";
echo"<script>location='index.php';</script>";
?>